.class Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;
.super Ljava/lang/Object;
.source "AbstractHelpPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/AbstractHelpPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HelpContent"
.end annotation


# instance fields
.field btnTextResId:I

.field contentDescResId:I

.field imageResId:I

.field textResId:I

.field final synthetic this$0:Lcom/android/systemui/recents/views/AbstractHelpPopup;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/AbstractHelpPopup;IIII)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/AbstractHelpPopup;
    .param p2, "image"    # I
    .param p3, "text"    # I
    .param p4, "contentDesc"    # I
    .param p5, "btn"    # I

    .prologue
    const/4 v0, -0x1

    .line 53
    iput-object p1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->this$0:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->imageResId:I

    .line 50
    iput v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->textResId:I

    .line 51
    iput v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->contentDescResId:I

    .line 52
    iput v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->btnTextResId:I

    .line 54
    iput p2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->imageResId:I

    .line 55
    iput p3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->textResId:I

    .line 56
    iput p4, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->contentDescResId:I

    .line 57
    iput p5, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->btnTextResId:I

    .line 53
    return-void
.end method


# virtual methods
.method public isValidContent()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    iget v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->imageResId:I

    if-gez v0, :cond_0

    return v1

    .line 61
    :cond_0
    iget v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->textResId:I

    if-gez v0, :cond_1

    return v1

    .line 62
    :cond_1
    iget v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->contentDescResId:I

    if-gez v0, :cond_2

    return v1

    .line 63
    :cond_2
    iget v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->btnTextResId:I

    if-gez v0, :cond_3

    return v1

    .line 64
    :cond_3
    const/4 v0, 0x1

    return v0
.end method
