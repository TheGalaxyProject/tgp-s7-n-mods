.class Lcom/samsung/android/settings/usefulfeature/Usefulfeature$29;
.super Ljava/lang/Object;
.source "Usefulfeature.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->smartCaptureDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    .prologue
    .line 2301
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$29;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 2304
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$29;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap0(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;

    move-result-object v1

    .line 2305
    const-string/jumbo v2, "enable_smart_capture"

    const/4 v3, 0x0

    .line 2304
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2305
    const/4 v2, 0x1

    .line 2304
    if-ne v1, v2, :cond_0

    .line 2305
    const/4 v0, 0x1

    .line 2306
    .local v0, "state":Z
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$29;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get19(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 2303
    return-void

    .line 2305
    .end local v0    # "state":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "state":Z
    goto :goto_0
.end method
