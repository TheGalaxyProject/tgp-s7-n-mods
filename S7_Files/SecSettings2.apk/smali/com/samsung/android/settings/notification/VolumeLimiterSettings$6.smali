.class Lcom/samsung/android/settings/notification/VolumeLimiterSettings$6;
.super Ljava/lang/Object;
.source "VolumeLimiterSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->showSetPasswordDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$6;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$6;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mUiStage:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    sget-object v1, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;->ConfirmWrong:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    if-ne v0, v1, :cond_0

    .line 254
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$6;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    sget-object v1, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;->NeedToConfirm:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    iput-object v1, v0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mUiStage:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$6;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-wrap1(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)V

    .line 251
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 259
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 263
    return-void
.end method
