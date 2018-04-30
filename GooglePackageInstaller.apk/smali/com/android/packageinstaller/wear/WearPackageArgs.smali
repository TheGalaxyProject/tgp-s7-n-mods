.class public Lcom/android/packageinstaller/wear/WearPackageArgs;
.super Ljava/lang/Object;
.source "WearPackageArgs.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPerms(Landroid/os/Bundle;)Z
    .locals 1

    const-string/jumbo v0, "com.google.android.clockwork.EXTRA_CHECK_PERMS"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getAssetUri(Landroid/os/Bundle;)Landroid/net/Uri;
    .locals 1

    const-string/jumbo v0, "com.google.android.clockwork.EXTRA_ASSET_URI"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public static getCompanionDeviceVersion(Landroid/os/Bundle;)I
    .locals 1

    const-string/jumbo v0, "com.google.android.clockwork.EXTRA_KEY_COMPANION_DEVICE_VERSION"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getCompanionSdkVersion(Landroid/os/Bundle;)I
    .locals 1

    const-string/jumbo v0, "com.google.android.clockwork.EXTRA_KEY_COMPANION_SDK_VERSION"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getCompressionAlg(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "com.google.android.clockwork.EXTRA_KEY_COMPRESSION_ALG"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageName(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "com.google.android.clockwork.EXTRA_PACKAGE_NAME"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPermUri(Landroid/os/Bundle;)Landroid/net/Uri;
    .locals 1

    const-string/jumbo v0, "com.google.android.clockwork.EXTRA_PERM_URI"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public static getStartId(Landroid/os/Bundle;)I
    .locals 1

    const-string/jumbo v0, "com.google.android.clockwork.EXTRA_START_ID"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static setPackageName(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    const-string/jumbo v0, "com.google.android.clockwork.EXTRA_PACKAGE_NAME"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static setStartId(Landroid/os/Bundle;I)Landroid/os/Bundle;
    .locals 1

    const-string/jumbo v0, "com.google.android.clockwork.EXTRA_START_ID"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public static skipIfSameVersion(Landroid/os/Bundle;)Z
    .locals 1

    const-string/jumbo v0, "com.google.android.clockwork.EXTRA_SKIP_IF_SAME_VERSION"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
