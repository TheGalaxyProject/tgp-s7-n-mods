.class public Lcom/android/settings/widget/LinkTextView;
.super Landroid/widget/TextView;
.source "LinkTextView.java"


# instance fields
.field private mAccessibilityHelper:Lcom/android/settings/widget/LinkAccessibilityHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/LinkTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Lcom/android/settings/widget/LinkAccessibilityHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/LinkAccessibilityHelper;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/android/settings/widget/LinkTextView;->mAccessibilityHelper:Lcom/android/settings/widget/LinkAccessibilityHelper;

    .line 42
    iget-object v0, p0, Lcom/android/settings/widget/LinkTextView;->mAccessibilityHelper:Lcom/android/settings/widget/LinkAccessibilityHelper;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/LinkTextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/widget/LinkTextView;->mAccessibilityHelper:Lcom/android/settings/widget/LinkAccessibilityHelper;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/LinkAccessibilityHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const/4 v0, 0x1

    return v0

    .line 62
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    const/4 v4, 0x0

    .line 47
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 48
    instance-of v1, p1, Landroid/text/Spanned;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 50
    check-cast v1, Landroid/text/Spanned;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v3, Landroid/text/style/ClickableSpan;

    invoke-interface {v1, v4, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ClickableSpan;

    .line 51
    .local v0, "spans":[Landroid/text/style/ClickableSpan;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 52
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/LinkTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 46
    .end local v0    # "spans":[Landroid/text/style/ClickableSpan;
    :cond_0
    return-void
.end method
