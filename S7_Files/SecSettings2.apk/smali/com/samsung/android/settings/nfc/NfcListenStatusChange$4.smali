.class Lcom/samsung/android/settings/nfc/NfcListenStatusChange$4;
.super Ljava/lang/Object;
.source "NfcListenStatusChange.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$4;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 228
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$4;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->-wrap2(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)V

    .line 227
    return-void
.end method
