.class Lcom/android/settings/voice/VoiceInputListPreference$CustomAdapter;
.super Landroid/widget/ArrayAdapter;
.source "VoiceInputListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/voice/VoiceInputListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private mSelectedIndex:I

.field final synthetic this$0:Lcom/android/settings/voice/VoiceInputListPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings/voice/VoiceInputListPreference;Landroid/content/Context;[Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/voice/VoiceInputListPreference;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "objects"    # [Ljava/lang/CharSequence;
    .param p4, "selectedIndex"    # I

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/settings/voice/VoiceInputListPreference$CustomAdapter;->this$0:Lcom/android/settings/voice/VoiceInputListPreference;

    .line 155
    const v0, 0x1020014

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/voice/VoiceInputListPreference$CustomAdapter;->mSelectedIndex:I

    .line 156
    iput p4, p0, Lcom/android/settings/voice/VoiceInputListPreference$CustomAdapter;->mSelectedIndex:I

    .line 154
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/android/settings/voice/VoiceInputListPreference$CustomAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 180
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f04003c

    const/4 v6, 0x0

    invoke-virtual {v2, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 181
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f110154

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 182
    .local v0, "checkedTextView":Landroid/widget/RadioButton;
    const v5, 0x1020016

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 183
    .local v3, "textView":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/settings/voice/VoiceInputListPreference$CustomAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget v5, p0, Lcom/android/settings/voice/VoiceInputListPreference$CustomAdapter;->mSelectedIndex:I

    if-ne p1, v5, :cond_0

    .line 186
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 189
    :cond_0
    const v5, 0x1020006

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 190
    .local v1, "imageView":Landroid/widget/ImageView;
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 192
    invoke-virtual {p0, p1}, Lcom/android/settings/voice/VoiceInputListPreference$CustomAdapter;->isItemEnabled(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 194
    return-object v4
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 166
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0, p1}, Lcom/android/settings/voice/VoiceInputListPreference$CustomAdapter;->isItemEnabled(I)Z

    move-result v0

    return v0

    .line 169
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isItemEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/settings/voice/VoiceInputListPreference$CustomAdapter;->this$0:Lcom/android/settings/voice/VoiceInputListPreference;

    invoke-static {v0}, Lcom/android/settings/voice/VoiceInputListPreference;->-get0(Lcom/android/settings/voice/VoiceInputListPreference;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
