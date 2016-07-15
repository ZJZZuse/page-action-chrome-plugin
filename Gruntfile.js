module.exports = function (grunt) {
    // 项目配置
    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),
        concat: {
            options: {
                separator: ''
            },
            dist: {
                src: ['app/*.js'],
                dest: 'out/myLib.js'
            }
        },
        copy: {
            main: {
                files: [
                    { src: 'out/myLib.js', dest: 'app/out/myLib.js'},
                    { src: '*.js', dest: 'app/out/',cwd: 'app',expand: true}
                ]
            }
        }

    });

    grunt.loadNpmTasks('grunt-contrib-concat');
    grunt.loadNpmTasks('grunt-contrib-copy');

    // 默认任务
    grunt.registerTask('default', ['concat','copy']);
    grunt.registerTask('concat1', ['concat']);
}