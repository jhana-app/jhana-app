import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:optimization_battery/optimization_battery.dart';
import 'package:shared_preferences/shared_preferences.dart';

const foregroundServiceStartNotAllowedPrefsKey =
    'foregroundServiceStartNotAllowed';
const skipBatteryOptimizationDialogPrefsKey = 'skipBatteryOptimizationDialog';
const skipBatteryOptimizationNotifyPrefsKey = 'skipBatteryOptimizationNotify';

Future<bool> isAndroid12() async {
  if (defaultTargetPlatform != TargetPlatform.android) {
    return false;
  }

  final androidInfo = await DeviceInfoPlugin().androidInfo;

  return androidInfo.version.sdkInt >= 31;
}

Future<bool> getBatteryOptimizationsState() async {
  return !await OptimizationBattery.isIgnoringBatteryOptimizations();
}

void batteryOptimizationNotify(BuildContext context) {
  final snackBar = SnackBar(
    content: const Text(
      'Your battery optimization restrictions'
      ' may cause playback interruptions.',
      style: TextStyle(
        fontSize: 14,
        height: 1.5,
      ),
    ),
    backgroundColor: const Color(0xffD0BCFF),
    duration: const Duration(seconds: 10),
    action: SnackBarAction(
      label: 'More info',
      textColor: Colors.black,
      onPressed: () => batteryOptimizationDialog(context),
    ),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

Future<void> batteryOptimizationDialog(BuildContext context) => showDialog(
      context: context,
      builder: (context) => Dialog(
        child: IntrinsicWidth(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 16,
              top: 20,
              right: 16,
              bottom: 12,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Your battery optimization restrictions'
                  ' may cause playback interruptions.',
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'To avoid this, please disable battery optimizations'
                  ' for this app.',
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 8),
                TextButton(
                  onPressed: () {
                    OptimizationBattery.openBatteryOptimizationSettings();
                  },
                  child: const Text('Open battery optimizations settings'),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const DontShowAgainCheckbox(),
                    const Expanded(
                      child: SizedBox(width: 8),
                    ),
                    SizedBox(
                      height: 48,
                      child: TextButton(
                        onPressed: () => context.pop(),
                        child: const Text('Close'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );

class DontShowAgainCheckbox extends StatefulWidget {
  const DontShowAgainCheckbox({super.key});

  @override
  State<DontShowAgainCheckbox> createState() => _DontShowAgainCheckboxState();
}

class _DontShowAgainCheckboxState extends State<DontShowAgainCheckbox> {
  final _prefs = GetIt.instance<SharedPreferences>();

  late bool checked =
      _prefs.getBool(skipBatteryOptimizationDialogPrefsKey) ?? false;

  Future<void> onTap() async {
    if (!checked) {
      await _prefs.setBool(skipBatteryOptimizationDialogPrefsKey, true);
    } else {
      await _prefs.remove(skipBatteryOptimizationDialogPrefsKey);
    }

    setState(() => checked = !checked);
  }

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: () => onTap(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            children: <Widget>[
              SizedBox(
                height: 48,
                width: 24,
                child: Checkbox(
                  value: checked,
                  onChanged: (_) => onTap(),
                ),
              ),
              const SizedBox(width: 8),
              const Text("Don't show again"),
            ],
          ),
        ),
      );
}
