module.exports = function (plop) {
    // controller generator
    plop.setGenerator('➕ CreateComponents', {
        description: ' Creates a new component ',
        prompts: [
            {
                type: 'input',
                name: 'name',
                message: 'What is the name of the new component ?'
            },
        ],
        actions: [
            {
                type: 'add',
                path: 'components/{{lowerCase name}}/{{lowerCase name}}.tsx',
                templateFile: 'tools/plop/CreateComponents/code.hbs'
            },
            {
                type: 'add',
                path: 'components/{{lowerCase name}}/{{lowerCase name}}.d.ts',
                templateFile: 'tools/plop/CreateComponents/type.hbs'
            },
            {
                type: 'add',
                path: 'components/{{lowerCase name}}/{{lowerCase name}}.stories.tsx',
                templateFile: 'tools/plop/CreateComponents/story.hbs'
            },
            {
                type: 'append',
                path: 'components/index.d.ts',
                template: '/// <reference path="./{{lowerCase name}}/{{lowerCase name}}.d.ts" />',
            },
        ]
    });
}; 