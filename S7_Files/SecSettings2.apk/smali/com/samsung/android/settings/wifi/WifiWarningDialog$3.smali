.class Lcom/samsung/android/settings/wifi/WifiWarningDialog$3;
.super Ljava/lang/Object;
.source "WifiWarningDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiWarningDialog;->showEnableWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiWarningDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiWarningDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/wifi/WifiWarningDialog;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarningDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "result":Z
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarningDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->-wrap0(Lcom/samsung/android/settings/wifi/WifiWarningDialog;)V

    .line 143
    const/4 v0, 0x1

    .line 145
    :cond_0
    return v0
.end method
