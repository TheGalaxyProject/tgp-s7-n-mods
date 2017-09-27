.class Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PaymentDropDownPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimListArrayAdapter"
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
.field ViewResourceID:I

.field otherSimIndex:I

.field final synthetic this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;Landroid/content/Context;I[Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "textViewResourceId"    # I
    .param p4, "objects"    # [Ljava/lang/CharSequence;
    .param p5, "selected"    # I

    .prologue
    const/4 v0, 0x0

    .line 223
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    .line 224
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 220
    iput v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->ViewResourceID:I

    .line 221
    iput v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->otherSimIndex:I

    .line 225
    invoke-static {p1, p5}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-set1(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;I)I

    .line 226
    iput p3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->ViewResourceID:I

    .line 223
    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 231
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 236
    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v5}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->onUpdateAdapter()V

    .line 238
    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v5, v5, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    const-string/jumbo v7, "nfc_sim_dropdown_list_view_row"

    const-string/jumbo v8, "layout"

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 240
    .local v2, "row":Landroid/view/View;
    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    const-string/jumbo v6, "nfc_sim_list_view_row_image_view"

    const-string/jumbo v7, "id"

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 241
    .local v0, "image":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v5, v5, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->simIcon:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, p1

    if-eqz v5, :cond_0

    .line 242
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 243
    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v5, v5, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->simIcon:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, p1

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    const-string/jumbo v6, "nfc_sim_list_view_radio_text_title"

    const-string/jumbo v7, "id"

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 247
    .local v4, "simName":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v5, v5, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->entries:[Ljava/lang/CharSequence;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v5}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-wrap1(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 250
    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->getPhonePLMNName(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->setPLMNName(Ljava/lang/String;I)V

    .line 251
    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->getPhonePLMNName(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->setPLMNName(Ljava/lang/String;I)V

    .line 253
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    const-string/jumbo v6, "nfc_sim_list_summary"

    const-string/jumbo v7, "id"

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 254
    .local v3, "simListSummary":Landroid/widget/TextView;
    if-eqz v3, :cond_2

    .line 255
    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v5, v5, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->simIcon:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, p1

    if-eqz v5, :cond_8

    .line 257
    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v5}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-wrap1(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 258
    rem-int/lit8 v5, p1, 0x2

    if-nez v5, :cond_6

    invoke-static {}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-get3()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v1, v5, v6

    .line 262
    .local v1, "plmn":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    .end local v1    # "plmn":Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v5}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-get1(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)I

    move-result v5

    if-ne p1, v5, :cond_3

    move-object v5, v4

    .line 270
    check-cast v5, Landroid/widget/CheckedTextView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 271
    if-eqz v3, :cond_3

    move-object v5, v4

    .line 272
    check-cast v5, Landroid/widget/CheckedTextView;

    invoke-virtual {v5}, Landroid/widget/CheckedTextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    move-object v5, v3

    .line 273
    check-cast v5, Landroid/widget/CheckedTextView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 277
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v5, p1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->chinaDisabled_offslot(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 278
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 279
    const v5, 0x3ecccccd    # 0.4f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 280
    if-eqz v3, :cond_4

    .line 281
    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$SimListArrayAdapter;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v5, v5, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    const v6, 0x7f0b095d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    const v5, 0x3ecccccd    # 0.4f

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 284
    :cond_4
    const v5, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 287
    :cond_5
    return-object v2

    .line 258
    :cond_6
    invoke-static {}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-get3()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v1, v5, v6

    .restart local v1    # "plmn":Ljava/lang/String;
    goto :goto_0

    .line 260
    .end local v1    # "plmn":Ljava/lang/String;
    :cond_7
    invoke-static {}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-get3()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v1, v5, v6

    .restart local v1    # "plmn":Ljava/lang/String;
    goto :goto_0

    .line 265
    .end local v1    # "plmn":Ljava/lang/String;
    :cond_8
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
