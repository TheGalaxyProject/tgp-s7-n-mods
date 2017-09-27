.class public Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;
.super Ljava/lang/Object;
.source "SemDatePickerSpinnerLayout.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TwTextWatcher"
.end annotation


# instance fields
.field private changedLen:I

.field private isMonth:Z

.field private mCheck:I

.field private mId:I

.field private mMaxLen:I

.field private mNext:I

.field private prevText:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;
    .param p2, "maxLen"    # I
    .param p3, "id"    # I
    .param p4, "month"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1039
    iput-object p1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1036
    iput v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->changedLen:I

    .line 1040
    iput p2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mMaxLen:I

    .line 1041
    iput p3, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    .line 1042
    iput-boolean p4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->isMonth:Z

    .line 1043
    iget v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mCheck:I

    .line 1044
    iget v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mCheck:I

    if-gez v0, :cond_0

    .line 1045
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mCheck:I

    .line 1046
    :cond_0
    iget v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mNext:I

    .line 1039
    return-void

    .line 1046
    :cond_1
    iget v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private changeFocus()V
    .locals 4

    .prologue
    .line 1249
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get0(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 1250
    .local v0, "manager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1251
    return-void

    .line 1253
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "changeFocus() mNext : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mNext:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1254
    const-string/jumbo v3, ", mCheck : "

    .line 1253
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1254
    iget v3, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mCheck:I

    .line 1253
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap5(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Ljava/lang/String;)V

    .line 1255
    iget v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mNext:I

    if-ltz v1, :cond_2

    .line 1256
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get15(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mCheck:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1257
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get15(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mNext:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1260
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get15(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1261
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get15(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 1248
    :cond_2
    return-void
.end method

.method private isFarsiLanguage()Z
    .locals 2

    .prologue
    .line 1227
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get2(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1228
    .local v0, "language":Ljava/lang/String;
    const-string/jumbo v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1229
    const/4 v1, 0x1

    return v1

    .line 1231
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isMeaLanguage()Z
    .locals 2

    .prologue
    .line 1217
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get2(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1218
    .local v0, "language":Ljava/lang/String;
    const-string/jumbo v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1219
    const-string/jumbo v1, "ur"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1218
    if-eqz v1, :cond_1

    .line 1220
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 1222
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private isMonthStr(Ljava/lang/String;)Z
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1239
    const/4 v1, 0x0

    .line 1240
    .local v1, "result":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get14(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1241
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get16(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1242
    const/4 v1, 0x1

    .line 1240
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1245
    :cond_1
    return v1
.end method

.method private isNumericStr(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 1235
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    return v0
.end method

.method private isSwaLanguage()Z
    .locals 2

    .prologue
    .line 1202
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get2(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1203
    .local v0, "language":Ljava/lang/String;
    const-string/jumbo v1, "hi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ta"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1204
    const-string/jumbo v1, "ml"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1203
    if-nez v1, :cond_0

    .line 1204
    const-string/jumbo v1, "te"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1203
    if-nez v1, :cond_0

    .line 1205
    const-string/jumbo v1, "or"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1203
    if-nez v1, :cond_0

    .line 1205
    const-string/jumbo v1, "ne"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1203
    if-nez v1, :cond_0

    .line 1206
    const-string/jumbo v1, "as"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1203
    if-nez v1, :cond_0

    .line 1206
    const-string/jumbo v1, "bn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1203
    if-nez v1, :cond_0

    .line 1207
    const-string/jumbo v1, "gu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1203
    if-nez v1, :cond_0

    .line 1207
    const-string/jumbo v1, "si"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1203
    if-nez v1, :cond_0

    .line 1208
    const-string/jumbo v1, "pa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1203
    if-nez v1, :cond_0

    .line 1208
    const-string/jumbo v1, "kn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1203
    if-nez v1, :cond_0

    .line 1209
    const-string/jumbo v1, "mr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1203
    if-eqz v1, :cond_1

    .line 1210
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 1212
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private showInvalidValueEnteredToast(Ljava/lang/String;I)V
    .locals 3
    .param p1, "setValue"    # Ljava/lang/String;
    .param p2, "selection"    # I

    .prologue
    const/4 v2, 0x0

    .line 1194
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get15(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1195
    if-eqz p2, :cond_0

    .line 1196
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get15(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1198
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get0(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get19(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1193
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "view"    # Landroid/text/Editable;

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "aftertextchanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap5(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Ljava/lang/String;)V

    .line 1049
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "beforeTextChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1056
    const-string/jumbo v2, ", "

    .line 1055
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1056
    const-string/jumbo v2, ", "

    .line 1055
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap5(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Ljava/lang/String;)V

    .line 1057
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->prevText:Ljava/lang/String;

    .line 1058
    iput p4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->changedLen:I

    .line 1054
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 10
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 1063
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "onTextChanged: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap5(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Ljava/lang/String;)V

    .line 1065
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get15(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1066
    .local v5, "tag":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 1067
    const-string/jumbo v6, "onClick"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "onLongClick"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1068
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "TAG exists: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap5(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Ljava/lang/String;)V

    .line 1069
    return-void

    .line 1072
    :cond_1
    iget-boolean v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->isMonth:Z

    if-eqz v6, :cond_c

    .line 1073
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap0(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1074
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "Samsung Keypad Num Month"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap5(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Ljava/lang/String;)V

    .line 1075
    iget v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->changedLen:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 1076
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    iget v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mMaxLen:I

    if-ne v6, v7, :cond_5

    .line 1077
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get15(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1078
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1079
    .local v3, "month":I
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get13(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/widget/SemNumberPicker;->getMinValue()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 1080
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v6

    const/4 v7, 0x2

    if-ge v6, v7, :cond_2

    .line 1081
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    .line 1085
    :goto_0
    return-void

    .line 1083
    :cond_2
    const-string/jumbo v6, ""

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    goto :goto_0

    .line 1087
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->changeFocus()V

    .line 1062
    .end local v3    # "month":I
    :cond_4
    :goto_1
    return-void

    .line 1089
    :cond_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 1090
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get13(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/widget/SemNumberPicker;->getMinValue()I

    move-result v6

    const/16 v7, 0xa

    if-lt v6, v7, :cond_6

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1091
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get15(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1092
    const-string/jumbo v6, ""

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    .line 1093
    return-void

    .line 1097
    :cond_6
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1098
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get15(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1099
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1100
    .restart local v3    # "month":I
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get13(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/widget/SemNumberPicker;->getMinValue()I

    move-result v6

    if-ge v3, v6, :cond_7

    .line 1101
    const-string/jumbo v6, ""

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    .line 1102
    return-void

    .line 1104
    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->changeFocus()V

    goto/16 :goto_1

    .line 1110
    .end local v3    # "month":I
    :cond_8
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get15(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1111
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string/jumbo v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string/jumbo v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string/jumbo v7, "2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string/jumbo v7, "3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1112
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string/jumbo v7, "4"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1111
    if-nez v6, :cond_4

    .line 1112
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string/jumbo v7, "5"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1111
    if-nez v6, :cond_4

    .line 1112
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string/jumbo v7, "6"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1111
    if-nez v6, :cond_4

    .line 1112
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string/jumbo v7, "7"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1111
    if-nez v6, :cond_4

    .line 1113
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string/jumbo v7, "8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1111
    if-nez v6, :cond_4

    .line 1113
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string/jumbo v7, "9"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1111
    if-nez v6, :cond_4

    .line 1113
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string/jumbo v7, "10"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1111
    if-nez v6, :cond_4

    .line 1113
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string/jumbo v7, "11"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1111
    if-nez v6, :cond_4

    .line 1114
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    iget v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mMaxLen:I

    if-lt v6, v7, :cond_a

    .line 1115
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->isMeaLanguage()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1116
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->prevText:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->isMonthStr(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1117
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->changeFocus()V

    goto/16 :goto_1

    .line 1120
    :cond_9
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->changeFocus()V

    goto/16 :goto_1

    .line 1122
    :cond_a
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->isSwaLanguage()Z

    move-result v6

    if-nez v6, :cond_b

    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->isFarsiLanguage()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1123
    :cond_b
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_4

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->isNumericStr(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1124
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->changeFocus()V

    goto/16 :goto_1

    .line 1129
    :cond_c
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v6, v7, :cond_11

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    iget v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mMaxLen:I

    if-ne v6, v7, :cond_11

    .line 1130
    iget v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->changedLen:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_11

    .line 1131
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get15(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1132
    iget v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mMaxLen:I

    const/4 v7, 0x3

    if-ge v6, v7, :cond_e

    .line 1133
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1134
    .local v0, "day":I
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get3(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/widget/SemNumberPicker;->getMinValue()I

    move-result v6

    if-ge v0, v6, :cond_10

    .line 1135
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v6

    const/4 v7, 0x4

    if-ge v6, v7, :cond_d

    .line 1136
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    .line 1140
    :goto_2
    return-void

    .line 1138
    :cond_d
    const-string/jumbo v6, ""

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    goto :goto_2

    .line 1143
    .end local v0    # "day":I
    :cond_e
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get20(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/widget/SemNumberPicker;->getMinValue()I

    move-result v7

    if-lt v6, v7, :cond_f

    .line 1144
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get20(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/widget/SemNumberPicker;->getMaxValue()I

    move-result v7

    if-le v6, v7, :cond_10

    .line 1145
    :cond_f
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    .line 1146
    return-void

    .line 1149
    :cond_10
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->changeFocus()V

    .line 1154
    :cond_11
    iget v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->changedLen:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 1155
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get15(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mId:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1156
    iget v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->mMaxLen:I

    const/4 v7, 0x3

    if-ge v6, v7, :cond_17

    .line 1157
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get3(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/widget/SemNumberPicker;->getMinValue()I

    move-result v6

    const/16 v7, 0xa

    if-lt v6, v7, :cond_12

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 1158
    :cond_12
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get3(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/widget/SemNumberPicker;->getMinValue()I

    move-result v6

    const/16 v7, 0x14

    if-lt v6, v7, :cond_13

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1157
    if-nez v6, :cond_14

    .line 1159
    :cond_13
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get3(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/widget/SemNumberPicker;->getMinValue()I

    move-result v6

    const/16 v7, 0x1e

    if-lt v6, v7, :cond_15

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1157
    if-eqz v6, :cond_15

    .line 1161
    :cond_14
    const-string/jumbo v6, ""

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    .line 1162
    return-void

    .line 1165
    :cond_15
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1166
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1167
    .restart local v0    # "day":I
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get3(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/widget/SemNumberPicker;->getMinValue()I

    move-result v6

    if-ge v0, v6, :cond_16

    .line 1168
    const-string/jumbo v6, ""

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    .line 1169
    return-void

    .line 1171
    :cond_16
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->changeFocus()V

    goto/16 :goto_1

    .line 1174
    .end local v0    # "day":I
    :cond_17
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1175
    .local v2, "len":I
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    add-int/lit8 v8, v2, -0x1

    int-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double v6, v8, v6

    double-to-int v1, v6

    .line 1176
    .local v1, "devider":I
    const-string/jumbo v4, ""

    .line 1178
    .local v4, "setValue":Ljava/lang/String;
    const/4 v6, 0x1

    if-eq v2, v6, :cond_18

    .line 1179
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v2, -0x1

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1182
    :cond_18
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get20(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/widget/SemNumberPicker;->getMinValue()I

    move-result v7

    div-int/2addr v7, v1

    if-lt v6, v7, :cond_19

    .line 1183
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get20(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/widget/SemNumberPicker;->getMaxValue()I

    move-result v7

    div-int/2addr v7, v1

    if-le v6, v7, :cond_4

    .line 1184
    :cond_19
    add-int/lit8 v6, v2, -0x1

    invoke-direct {p0, v4, v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;->showInvalidValueEnteredToast(Ljava/lang/String;I)V

    .line 1185
    return-void
.end method
