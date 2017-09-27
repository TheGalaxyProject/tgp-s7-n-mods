.class public Lcom/samsung/android/settings/fmm/RecipientsMinusView;
.super Landroid/widget/LinearLayout;
.source "RecipientsMinusView.java"


# static fields
.field private static SETTINGS_FMM_SIM_CHANGE_ADDED_NUM:I

.field private static SETTINGS_FMM_SIM_CHANGE_ALERT_REMOVE:I


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->SETTINGS_FMM_SIM_CHANGE_ADDED_NUM:I

    return v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->SETTINGS_FMM_SIM_CHANGE_ALERT_REMOVE:I

    return v0
.end method

.method static synthetic -set0(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->SETTINGS_FMM_SIM_CHANGE_ADDED_NUM:I

    return p0
.end method

.method static synthetic -set1(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->SETTINGS_FMM_SIM_CHANGE_ALERT_REMOVE:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/fmm/RecipientsMinusView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->remove()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->mContext:Landroid/content/Context;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->mContext:Landroid/content/Context;

    .line 71
    return-void
.end method

.method private remove()V
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 105
    return-void
.end method


# virtual methods
.method public getPhoneNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    const v1, 0x7f1103e2

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 111
    .local v0, "PhoneNumber":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 79
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 80
    const v2, 0x7f11044a

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 81
    .local v0, "MinusButton":Landroid/widget/ImageView;
    const v2, 0x7f1103e2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 82
    .local v1, "PhoneNumber":Landroid/widget/EditText;
    new-instance v2, Lcom/samsung/android/settings/fmm/RecipientsMinusView$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/fmm/RecipientsMinusView$1;-><init>(Lcom/samsung/android/settings/fmm/RecipientsMinusView;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 94
    new-instance v2, Lcom/samsung/android/settings/fmm/RecipientsMinusView$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/fmm/RecipientsMinusView$2;-><init>(Lcom/samsung/android/settings/fmm/RecipientsMinusView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method

.method public setFocus(Z)V
    .locals 5
    .param p1, "focus"    # Z

    .prologue
    const/4 v4, 0x0

    .line 122
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 123
    const-string/jumbo v3, "input_method"

    .line 122
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 124
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    const v2, 0x7f1103e2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 125
    .local v0, "PhoneNumber":Landroid/widget/EditText;
    if-eqz p1, :cond_1

    .line 126
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 127
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 128
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 2
    .param p1, "Number"    # Ljava/lang/String;

    .prologue
    .line 116
    const v1, 0x7f1103e2

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/fmm/RecipientsMinusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 117
    .local v0, "PhoneNumber":Landroid/widget/EditText;
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 115
    return-void
.end method
