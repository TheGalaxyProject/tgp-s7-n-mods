.class Lcom/samsung/android/settings/notification/SoundSettings$15;
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
    .line 488
    iput-object p1, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 491
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 492
    .local v0, "val":Z
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/SoundSettings;->-get2(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/content/Context;

    move-result-object v3

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f100111

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-eqz v0, :cond_1

    const/16 v1, 0x3e8

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 493
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/SoundSettings;->-wrap0(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    .line 494
    const-string/jumbo v3, "vibrate_when_ringing"

    .line 495
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 493
    :cond_0
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    return v1

    :cond_1
    move v1, v2

    .line 492
    goto :goto_0
.end method
