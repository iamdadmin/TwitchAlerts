module.exports = {
    env: {
        node: true,
        es2021: true,
    },
    extends: 'eslint:recommended',
    parserOptions: {
        ecmaVersion: 'latest',
        sourceType: 'script',              
    },
    plugins: ['@stylistic/js'],
    rules: {
        '@stylistic/js/indent': ['error', 4],
        'semi': ['error', 'always'],
        'no-multi-spaces': ['error'],
        'quotes': [2, 'single', { 'avoidEscape': true }]
    },
};
