.class Lcom/samsung/android/settings/notification/SoundSettings$19;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/SoundSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SoundSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SoundSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/notification/SoundSettings;

    .prologue
    .line 566
    iput-object p1, p0, Lcom/samsung/android/settings/notification/SoundSettings$19;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 569
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 570
    .local v1, "val":Z
    if-eqz v1, :cond_0

    .line 571
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings$19;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundSettings;->-wrap1(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 572
    .local v0, "mConfig":Landroid/service/notification/ZenModeConfig;
    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings$19;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    iget-object v2, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v2, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-virtual {v4, v2, v5}, Lcom/samsung/android/settings/notification/SoundSettings;->setZenMode(ILandroid/net/Uri;)V

    .line 576
    .end local v0    # "mConfig":Landroid/service/notification/ZenModeConfig;
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings$19;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundSettings;->-get2(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/content/Context;

    move-result-object v4

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings$19;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 577
    const v5, 0x7f100145

    .line 576
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 577
    if-eqz v1, :cond_1

    const/16 v2, 0x3e8

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 576
    invoke-static {v4, v5, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 578
    const/4 v2, 0x1

    return v2

    .line 574
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings$19;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/settings/notification/SoundSettings;->setZenMode(ILandroid/net/Uri;)V

    goto :goto_0

    :cond_1
    move v2, v3

    .line 577
    goto :goto_1
.end method
