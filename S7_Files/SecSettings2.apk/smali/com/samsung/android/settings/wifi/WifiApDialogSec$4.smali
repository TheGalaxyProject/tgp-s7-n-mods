.class Lcom/samsung/android/settings/wifi/WifiApDialogSec$4;
.super Ljava/lang/Object;
.source "WifiApDialogSec.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiApDialogSec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    .prologue
    .line 926
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$4;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 968
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$4;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-wrap2(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V

    .line 967
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 963
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_0

    .line 964
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$4;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-set3(Lcom/samsung/android/settings/wifi/WifiApDialogSec;Ljava/lang/String;)Ljava/lang/String;

    .line 962
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 8
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x3f

    .line 928
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    if-le v4, v6, :cond_5

    .line 929
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$4;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get17(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 930
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$4;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get17(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    if-gt v4, v6, :cond_4

    .line 931
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$4;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get17(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    .line 932
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 933
    .local v3, "mText":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_2

    .line 934
    const/4 v0, 0x0

    .line 935
    .local v0, "index":I
    const/4 v2, 0x0

    .line 936
    .local v2, "mCharCounter":I
    const/4 v1, 0x0

    .local v1, "mByteCounter":I
    :goto_0
    if-gt v1, v6, :cond_0

    .line 937
    invoke-virtual {v3, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    .line 938
    add-int v4, v0, v2

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v1, v4

    .line 939
    add-int/2addr v0, v2

    goto :goto_0

    .line 941
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$4;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get11(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/EditText;

    move-result-object v4

    sub-int v5, v0, v2

    invoke-virtual {v3, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 952
    .end local v0    # "index":I
    .end local v1    # "mByteCounter":I
    .end local v2    # "mCharCounter":I
    .end local v3    # "mText":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$4;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get12(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x7f0b0e38

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 953
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$4;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get11(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/EditText;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$4;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get5(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d020d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 954
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$4;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get12(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 955
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$4;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get11(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/EditText;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$4;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get11(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 927
    :cond_1
    :goto_2
    return-void

    .line 943
    .restart local v3    # "mText":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$4;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get11(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v3, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 946
    .end local v3    # "mText":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$4;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get11(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/EditText;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$4;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get17(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 949
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$4;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get11(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/EditText;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 956
    :cond_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    if-ge v4, v6, :cond_1

    .line 957
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$4;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get12(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/TextView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 958
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$4;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get11(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/EditText;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$4;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get5(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0113

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_2
.end method
