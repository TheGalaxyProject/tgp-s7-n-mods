.class public Lcom/android/systemui/recents/model/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/AppInfo$AppInfoCallback;
    }
.end annotation


# instance fields
.field public executeCount:I

.field public key:Ljava/lang/String;

.field mCallback:Lcom/android/systemui/recents/model/AppInfo$AppInfoCallback;

.field public resolveInfo:Landroid/content/pm/ResolveInfo;

.field public supportMultiInstance:Z

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/pm/ResolveInfo;)V
    .locals 2
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v1, p0, Lcom/android/systemui/recents/model/AppInfo;->executeCount:I

    .line 11
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/systemui/recents/model/AppInfo;->title:Ljava/lang/String;

    .line 12
    iput-boolean v1, p0, Lcom/android/systemui/recents/model/AppInfo;->supportMultiInstance:Z

    .line 15
    iput-object p1, p0, Lcom/android/systemui/recents/model/AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 16
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/model/AppInfo;->key:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public notifyDataLoaded(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/recents/model/AppInfo;->mCallback:Lcom/android/systemui/recents/model/AppInfo$AppInfoCallback;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/android/systemui/recents/model/AppInfo;->mCallback:Lcom/android/systemui/recents/model/AppInfo$AppInfoCallback;

    invoke-interface {v0, p1}, Lcom/android/systemui/recents/model/AppInfo$AppInfoCallback;->onDataLoaded(Landroid/graphics/drawable/Drawable;)V

    .line 36
    :cond_0
    return-void
.end method

.method public removeCallback()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/model/AppInfo;->mCallback:Lcom/android/systemui/recents/model/AppInfo$AppInfoCallback;

    .line 32
    return-void
.end method

.method public setCallback(Lcom/android/systemui/recents/model/AppInfo$AppInfoCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/systemui/recents/model/AppInfo$AppInfoCallback;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/systemui/recents/model/AppInfo;->mCallback:Lcom/android/systemui/recents/model/AppInfo$AppInfoCallback;

    .line 28
    return-void
.end method
