# android-template

A [cookiecutter](https://github.com/audreyr/cookiecutter) :cookie: template for  new Android projects at thoughtbot

## What's Included?

- The latest version of [Gradle Build Tools](https://gradle.org/) :wrench:
- The latest version of the [Android Support Library](https://developer.android.com/topic/libraries/support-library/index.html) :books:
- Some of our favorite and most often used [dependencies](https://github.com/thoughtbot/android-template/blob/master/%7B%7B%20cookiecutter.repo_name%20%7D%7D/app/build.gradle#L30) :family:
- Internet permission :earth_africa:
- Configuration for [CircleCI](https://circleci.com) :large_blue_circle:

## Optional Dependencies
- [RxJava](https://github.com/ReactiveX/RxJava) and [RxAndroid](https://github.com/ReactiveX/RxAndroid) :arrows_clockwise:
- [Tests] List of different tests

## Usage

Install cookiecutter (via homebrew on mac):

```bash
brew install cookiecutter
```

Run:

```bash
cookiecutter gh:OlegTarashkevich/kotlin_template
```

You'll be prompted for various configuration options - see [`cookiecutter.json`](https://github.com/OlegTarashkevich/android-template/blob/master/{{ cookiecutter.repo_name }}/dependencies.gradle) for the full list. To accept the configuration option you see in brackets, simply hit enter
