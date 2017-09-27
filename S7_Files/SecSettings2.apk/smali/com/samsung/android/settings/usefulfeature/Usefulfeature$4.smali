.class Lcom/samsung/android/settings/usefulfeature/Usefulfeature$4;
.super Landroid/database/ContentObserver;
.source "Usefulfeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/Usefulfeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/usefulfeature/Usefulfeature;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 438
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$4;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v3, 0x0

    .line 441
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$4;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get18(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 442
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$4;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap0(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;

    move-result-object v1

    .line 443
    const-string/jumbo v2, "send_emergency_message"

    .line 442
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 444
    .local v0, "mSendSOSMessagecheck":Z
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$4;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get18(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v0, :cond_2

    const v1, 0x7f0b19db

    :goto_1
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 440
    .end local v0    # "mSendSOSMessagecheck":Z
    :cond_0
    return-void

    .line 442
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "mSendSOSMessagecheck":Z
    goto :goto_0

    .line 445
    :cond_2
    const v1, 0x7f0b19dc

    goto :goto_1
.end method
