#!/usr/bin/env node

const fs = require('fs')

const configFolder = '/firebase'
const configPath = `${configFolder}/firebase.json`
if (!fs.existsSync(configPath)) {
    generateConfig()
} else {
    logCurrentConfig()
}

/**
 * Reads the Firebase configuration and logs it.
 */
function logCurrentConfig() {
    const rawContent = fs.readFileSync(configPath)
    const existingConfig = JSON.parse(rawContent)
    console.info('Using existing Firebase configuration.', existingConfig)
}

/**
 * Generates a custom Firebase RDB configuration based on the `EMULATOR_PORT` and `EMULATOR_HOST`
 * environment variables.
 */
function generateConfig() {
    const firebaseConfig = {
        emulators: {
            ui: {
                enabled: process.env.UI_ENABLED === 'true',
                port: process.env.UI_EMULATOR_PORT,
                host: process.env.EMULATORS_HOST,
            },
            auth: {
                port: process.env.AUTH_EMULATOR_PORT,
                host: process.env.EMULATORS_HOST,
            },
            singleProjectMode: 'true',
        },
    }
    console.info('Generating Firebase configuration.', firebaseConfig)
    fs.writeFileSync(configPath, JSON.stringify(firebaseConfig))
}
