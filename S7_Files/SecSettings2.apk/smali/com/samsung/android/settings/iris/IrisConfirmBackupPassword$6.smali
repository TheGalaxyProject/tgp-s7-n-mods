.class Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$6;
.super Ljava/lang/Object;
.source "IrisConfirmBackupPassword.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->setEditBoxListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$6;->this$0:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 248
    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    .line 249
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$6;->this$0:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    invoke-static {v0}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->-wrap0(Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;)V

    .line 252
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 254
    :cond_1
    return v1
.end method
