.class Lcom/android/systemui/assist/AssistManager$5;
.super Ljava/lang/Object;
.source "AssistManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/assist/AssistManager;->showAssistanceAppSettingAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/assist/AssistManager;

.field final synthetic val$assistanceAppAdapter:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/assist/AssistManager;Landroid/widget/ArrayAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/assist/AssistManager;
    .param p2, "val$assistanceAppAdapter"    # Landroid/widget/ArrayAdapter;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager$5;->this$0:Lcom/android/systemui/assist/AssistManager;

    iput-object p2, p0, Lcom/android/systemui/assist/AssistManager$5;->val$assistanceAppAdapter:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager$5;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-static {v0}, Lcom/android/systemui/assist/AssistManager;->-get0(Lcom/android/systemui/assist/AssistManager;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "AssistanceAppSettingAlreadySelected"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 372
    iget-object v1, p0, Lcom/android/systemui/assist/AssistManager$5;->this$0:Lcom/android/systemui/assist/AssistManager;

    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager$5;->val$assistanceAppAdapter:Landroid/widget/ArrayAdapter;

    check-cast v0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;->getSelectedItem()Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/systemui/assist/AssistManager;->-wrap0(Lcom/android/systemui/assist/AssistManager;Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;)V

    .line 370
    return-void
.end method
