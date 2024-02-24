/*
*
* 1> Install
* ==============
* ->flutter pub global activate get_cli
*
* =============================================================================
*
* 2> Create Project
* ===================
* ->get create project
*
* => if no project name is specified, it will take the folder name as project name
* -> get create project:get_cli_project  [Project name without space]
* -> get create project:"get cli project" [Project name with space]
*
* =============================================================================
*
* 3> Initialize project/ create structure
* =======================================
* ->get init
*
* ==============================================================================
*
* 4> Create a page
* ===================
* ->get create page:login [will create controller, view and binding]
*
* ==============================================================================
*
* 5> Create Controller
* =====================
* -> get create controller:another [default is in Home Folder]
* -> get create controller:another on login
*
* ==============================================================================
*
* 6> Create View
* ================
* -> get create view:another [By default in Home folder]
* -> get create view:another on login
*
* ==============================================================================
*
* 7> Create provider
* ===================
* -> get create provider:another [By default in home folder]
* -> get create provider:another on login
*
* ==============================================================================
*
* 8> Generate Localization file
* ===============================
* -> get generate locales assets/locales [path of the files where locales stored]
*
* ==============================================================================
*
* 9> Generate Model
* ==================
* =>Will create both provider and model
* -> get generate model on login with assets/models/user.json [file path of json file]
*
* =>to skip provider generation
* -> get generate model on login with assets/models/ user.json --skipProvider
*
* => from url
* -> get generate model on login from url [provide url as normal]
*
* ==============================================================================
*
* 10> Install a package
* ======================
* -> get install camera
*
* => to install several package
* -> get install http path camera
*
* => install with specific version
* -> get install path:1.6.4
*
* ==============================================================================
*
* 11> Remove Package
* =======================
* -> get remove http
*
* => remove several project from package
* -> get remove http path
*
* =============================================================================
*
* 12>get update [Update the CLI]
*
* 13> get -v [CLI Version]
*
* 14> get help
*
*
*
*
*
*
* */