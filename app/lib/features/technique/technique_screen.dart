import 'package:flutter/material.dart';
import 'package:jhanas/api/graphql/technique.graphql.dart';
import 'package:jhanas/api/graphql/unit.graphql.dart';
import 'package:jhanas/features/technique/widgets/technique_info.dart';
import 'package:jhanas/helpers/error.dart';

class TechniqueScreen extends StatelessWidget {
  final String courseId;
  final String unitId;
  final String techniqueId;

  const TechniqueScreen({
    super.key,
    required this.courseId,
    required this.unitId,
    required this.techniqueId,
  });

  @override
  Widget build(BuildContext context) {
    return Query$FetchTechnique$Widget(
      options: Options$Query$FetchTechnique(
        operationName: 'FetchTechnique',
        variables: Variables$Query$FetchTechnique(
          unitId: unitId,
          techniqueId: techniqueId,
        ),
      ),
      builder: (result, {fetchMore, refetch}) {
        final noTechnique = result.data?['technique'] == null;

        if (result.hasException) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            errorMessage(
              'Internal server error',
              exception: result.exception.toString(),
              alert: noTechnique && !result.isLoading,
            );
          });
        }

        if (noTechnique) {
          if (result.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          return const Center(child: Text('Technique not found'));
        }

        final unit = Fragment$Unit.fromJson(result.data?['unit']);
        final technique =
            Fragment$Technique.fromJson(result.data?['technique']);

        return TechniqueInfo(unit: unit, technique: technique);
      },
    );
  }
}
