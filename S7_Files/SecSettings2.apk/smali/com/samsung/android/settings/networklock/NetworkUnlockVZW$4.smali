.class Lcom/samsung/android/settings/networklock/NetworkUnlockVZW$4;
.super Ljava/lang/Object;
.source "NetworkUnlockVZW.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/samsung/android/settings/networklock/NetworkUnlockVZW$4;->this$0:Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;

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

    .line 99
    if-eqz p2, :cond_0

    .line 100
    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/networklock/NetworkUnlockVZW$4;->this$0:Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;

    invoke-virtual {v0}, Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;->handleNext()V

    .line 103
    const/4 v0, 0x1

    return v0

    .line 101
    :cond_1
    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    .line 105
    return v1
.end method
