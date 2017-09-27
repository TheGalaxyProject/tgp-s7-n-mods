.class Lcom/samsung/android/settings/DCMHomeSettings$1;
.super Ljava/lang/Object;
.source "DCMHomeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/DCMHomeSettings;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/DCMHomeSettings;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/DCMHomeSettings;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/DCMHomeSettings;
    .param p2, "val$position"    # I

    .prologue
    .line 246
    iput-object p1, p0, Lcom/samsung/android/settings/DCMHomeSettings$1;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    iput p2, p0, Lcom/samsung/android/settings/DCMHomeSettings$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 248
    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings$1;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    iget v1, p0, Lcom/samsung/android/settings/DCMHomeSettings$1;->val$position:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/DCMHomeSettings;->-set0(Lcom/samsung/android/settings/DCMHomeSettings;I)I

    .line 249
    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings$1;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    iget v1, p0, Lcom/samsung/android/settings/DCMHomeSettings$1;->val$position:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/DCMHomeSettings;->-wrap0(Lcom/samsung/android/settings/DCMHomeSettings;I)V

    .line 250
    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings$1;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/DCMHomeSettings;->-wrap1(Lcom/samsung/android/settings/DCMHomeSettings;)V

    .line 251
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 247
    return-void
.end method
