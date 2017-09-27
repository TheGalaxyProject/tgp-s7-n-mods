.class Lcom/samsung/android/settings/nfc/OtherSettings$2;
.super Landroid/os/Handler;
.source "OtherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/OtherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/OtherSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/OtherSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/nfc/OtherSettings;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/OtherSettings$2;->this$0:Lcom/samsung/android/settings/nfc/OtherSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 334
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings$2;->this$0:Lcom/samsung/android/settings/nfc/OtherSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/OtherSettings;->refresh()V

    .line 333
    return-void
.end method
