.class public Lcom/android/systemui/recents/model/LockTaskPreference;
.super Ljava/lang/Object;
.source "LockTaskPreference.java"


# static fields
.field private static mPreference:Lcom/android/systemui/recents/model/LockTaskPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/recents/model/LockTaskPreference;->mPreference:Lcom/android/systemui/recents/model/LockTaskPreference;

    .line 21
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string/jumbo v0, "RecentLock"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/systemui/recents/model/PreferenceHelper;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 54
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/model/LockTaskPreference;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    sget-object v0, Lcom/android/systemui/recents/model/LockTaskPreference;->mPreference:Lcom/android/systemui/recents/model/LockTaskPreference;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/android/systemui/recents/model/LockTaskPreference;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/model/LockTaskPreference;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/recents/model/LockTaskPreference;->mPreference:Lcom/android/systemui/recents/model/LockTaskPreference;

    .line 30
    :cond_0
    sget-object v0, Lcom/android/systemui/recents/model/LockTaskPreference;->mPreference:Lcom/android/systemui/recents/model/LockTaskPreference;

    return-object v0
.end method

.method private loadPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 51
    const-string/jumbo v0, "RecentLock"

    invoke-static {p1, v0, p2}, Lcom/android/systemui/recents/model/PreferenceHelper;->loadPreferenceAsString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isLocked(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/model/LockTaskPreference;->loadPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removePreference(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 38
    const-string/jumbo v0, "RecentLock"

    invoke-static {p1, v0, p2}, Lcom/android/systemui/recents/model/PreferenceHelper;->removePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public savePreference(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 34
    const-string/jumbo v0, "RecentLock"

    invoke-static {p1, v0, p2, p2}, Lcom/android/systemui/recents/model/PreferenceHelper;->savePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method
