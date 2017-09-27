.class Lcom/android/settings/applications/ConfirmConvertToFbe$1;
.super Ljava/lang/Object;
.source "ConfirmConvertToFbe.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ConfirmConvertToFbe;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ConfirmConvertToFbe;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ConfirmConvertToFbe;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/applications/ConfirmConvertToFbe;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/settings/applications/ConfirmConvertToFbe$1;->this$0:Lcom/android/settings/applications/ConfirmConvertToFbe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 43
    const-string/jumbo v1, "android.intent.extra.REASON"

    const-string/jumbo v2, "convert_fbe"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    iget-object v1, p0, Lcom/android/settings/applications/ConfirmConvertToFbe$1;->this$0:Lcom/android/settings/applications/ConfirmConvertToFbe;

    invoke-virtual {v1}, Lcom/android/settings/applications/ConfirmConvertToFbe;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 40
    return-void
.end method
