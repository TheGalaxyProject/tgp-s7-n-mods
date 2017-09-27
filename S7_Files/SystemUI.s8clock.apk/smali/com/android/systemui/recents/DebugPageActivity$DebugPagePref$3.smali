.class Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref$3;
.super Ljava/lang/Object;
.source "DebugPageActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->addConfigValues()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref$3;->this$1:Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 254
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 255
    const-string/jumbo v4, "pref_key_config_"

    const-string/jumbo v5, ""

    .line 254
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, "flagName":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref$3;->this$1:Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;

    iget-object v3, v3, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->mConfigClass:Ljava/lang/Class;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 258
    .local v1, "field":Ljava/lang/reflect/Field;
    iget-object v3, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref$3;->this$1:Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;

    iget-object v4, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref$3;->this$1:Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;

    invoke-static {v4}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->-wrap1(Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;)Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v4

    invoke-static {v3, v1, v4, p2}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->-wrap0(Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 259
    iget-object v3, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref$3;->this$1:Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;

    iget-object v4, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref$3;->this$1:Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;

    invoke-static {v4}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->-wrap1(Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;)Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v4

    invoke-static {v3, p1, v1, v4}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->-wrap3(Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;Landroid/preference/Preference;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    const/4 v3, 0x1

    return v3

    .line 262
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 265
    :cond_0
    const/4 v3, 0x0

    return v3
.end method
