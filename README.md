# Eclipse Flatpak Package


# build and install locally

Clone git repo and execute following commands:

    flatpak-builder --repo=./repo --force-clean ./build org.eclipse.Eclipse.json
    flatpak --user remote-add --no-gpg-verify eclipse-builds ./repo
    flatpak --user install eclipse-builds org.eclipse.Eclipse//master


# lombok support

There exist also an branch for eclipse with [Lombok](https://projectlombok.org/)
support. To build this branch use following commands:

    git checkout lombok
    flatpak-builder --verbose --repo=repo --force-clean ./build org.eclipse.Eclipse.json
    flatpak --user remote-add --no-gpg-verify eclipse-builds ./repo
    flatpak --user install eclipse-builds org.eclipse.Eclipse//lombok
