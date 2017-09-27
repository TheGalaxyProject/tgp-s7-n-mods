.class Lcom/android/settings/personalvibration/SelectPatternDialog$2;
.super Ljava/lang/Object;
.source "SelectPatternDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/personalvibration/SelectPatternDialog;->showRenameDialog(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/personalvibration/SelectPatternDialog;

.field final synthetic val$EditPattern:Landroid/widget/TextView;

.field final synthetic val$id:I

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Lcom/android/settings/personalvibration/SelectPatternDialog;Landroid/widget/TextView;ILandroid/view/inputmethod/InputMethodManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/personalvibration/SelectPatternDialog;
    .param p2, "val$EditPattern"    # Landroid/widget/TextView;
    .param p3, "val$id"    # I
    .param p4, "val$imm"    # Landroid/view/inputmethod/InputMethodManager;

    .prologue
    .line 481
    iput-object p1, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$2;->this$0:Lcom/android/settings/personalvibration/SelectPatternDialog;

    iput-object p2, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$2;->val$EditPattern:Landroid/widget/TextView;

    iput p3, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$2;->val$id:I

    iput-object p4, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$2;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 484
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 485
    .local v2, "values":Landroid/content/ContentValues;
    iget-object v3, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$2;->val$EditPattern:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 486
    .local v1, "mPatternName":Ljava/lang/String;
    const-string/jumbo v3, "\n"

    const-string/jumbo v4, " "

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\r"

    const-string/jumbo v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 487
    const-string/jumbo v3, "vibration_name"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-string/jumbo v3, "vibration_type"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 489
    iget-object v3, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$2;->this$0:Lcom/android/settings/personalvibration/SelectPatternDialog;

    invoke-virtual {v3}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 490
    const-string/jumbo v4, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    .line 489
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 490
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$2;->val$id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 489
    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 491
    .local v0, "count":I
    const-string/jumbo v3, "SelectPatternDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "count"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , mPatternName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const-string/jumbo v3, "SelectPatternDialog"

    const-string/jumbo v4, "OK was clicked, the pattern saved sucessfully"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v3, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$2;->this$0:Lcom/android/settings/personalvibration/SelectPatternDialog;

    invoke-static {v3}, Lcom/android/settings/personalvibration/SelectPatternDialog;->-get2(Lcom/android/settings/personalvibration/SelectPatternDialog;)Lcom/android/settings/personalvibration/VibrationPatternListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;->loadPatternType()V

    .line 494
    iget-object v3, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$2;->this$0:Lcom/android/settings/personalvibration/SelectPatternDialog;

    invoke-static {v3}, Lcom/android/settings/personalvibration/SelectPatternDialog;->-get2(Lcom/android/settings/personalvibration/SelectPatternDialog;)Lcom/android/settings/personalvibration/VibrationPatternListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;->notifyDataSetChanged()V

    .line 496
    iget-object v3, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$2;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$2;->val$EditPattern:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 482
    return-void
.end method
