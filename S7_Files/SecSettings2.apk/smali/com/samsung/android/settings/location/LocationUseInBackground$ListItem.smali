.class public Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;
.super Ljava/lang/Object;
.source "LocationUseInBackground.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/location/LocationUseInBackground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;",
        ">;"
    }
.end annotation


# instance fields
.field public mAppInfo:Landroid/content/pm/ApplicationInfo;

.field public mAppName:Ljava/lang/CharSequence;

.field public mAppSurpportsRuntimePermissions:Z

.field public mGranted:Z

.field public mIsEnable:Z

.field public mPackageinfo:Landroid/content/pm/PackageInfo;

.field final synthetic this$0:Lcom/samsung/android/settings/location/LocationUseInBackground;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/location/LocationUseInBackground;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/CharSequence;ZZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/location/LocationUseInBackground;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p4, "appName"    # Ljava/lang/CharSequence;
    .param p5, "isEnable"    # Z
    .param p6, "granted"    # Z
    .param p7, "appSurpportsSuntimePermissions"    # Z

    .prologue
    .line 429
    iput-object p1, p0, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->this$0:Lcom/samsung/android/settings/location/LocationUseInBackground;

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    iput-object p2, p0, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 433
    iput-object p3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mPackageinfo:Landroid/content/pm/PackageInfo;

    .line 434
    iput-boolean p5, p0, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mIsEnable:Z

    .line 435
    iput-object p4, p0, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mAppName:Ljava/lang/CharSequence;

    .line 436
    iput-boolean p6, p0, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mGranted:Z

    .line 437
    iput-boolean p7, p0, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mAppSurpportsRuntimePermissions:Z

    .line 430
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;)I
    .locals 3
    .param p1, "another"    # Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;

    .prologue
    .line 442
    const/4 v0, 0x0

    .line 443
    .local v0, "comparison":I
    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mAppName:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mAppName:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 444
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "another"    # Ljava/lang/Object;

    .prologue
    .line 441
    check-cast p1, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;

    .end local p1    # "another":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->compareTo(Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;)I

    move-result v0

    return v0
.end method
