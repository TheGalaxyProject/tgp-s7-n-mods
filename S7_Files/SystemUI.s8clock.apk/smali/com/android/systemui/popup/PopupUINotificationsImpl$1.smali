.class Lcom/android/systemui/popup/PopupUINotificationsImpl$1;
.super Ljava/lang/Object;
.source "PopupUINotificationsImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/popup/PopupUINotificationsImpl;->showDataConnectionAlertDialogs(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/popup/PopupUINotificationsImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/popup/PopupUINotificationsImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/popup/PopupUINotificationsImpl;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl$1;->this$0:Lcom/android/systemui/popup/PopupUINotificationsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 99
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 100
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.settings.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 103
    iget-object v1, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl$1;->this$0:Lcom/android/systemui/popup/PopupUINotificationsImpl;

    invoke-static {v1}, Lcom/android/systemui/popup/PopupUINotificationsImpl;->-get0(Lcom/android/systemui/popup/PopupUINotificationsImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 97
    return-void
.end method
