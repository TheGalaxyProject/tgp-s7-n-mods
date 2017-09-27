.class public Lcom/android/keyguard/util/ViewStyleUtils;
.super Ljava/lang/Object;
.source "ViewStyleUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/util/ViewStyleUtils$FontType;,
        Lcom/android/keyguard/util/ViewStyleUtils$UpdatedFrom;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/keyguard/util/ViewStyleUtils;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFontEffectUtil:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/keyguard/util/ViewStyleUtils;->mContext:Landroid/content/Context;

    .line 45
    new-instance v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;

    iget-object v1, p0, Lcom/android/keyguard/util/ViewStyleUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/util/ViewStyleUtils;->mFontEffectUtil:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;

    .line 43
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    sget-object v0, Lcom/android/keyguard/util/ViewStyleUtils;->sInstance:Lcom/android/keyguard/util/ViewStyleUtils;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/android/keyguard/util/ViewStyleUtils;

    invoke-direct {v0, p0}, Lcom/android/keyguard/util/ViewStyleUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/util/ViewStyleUtils;->sInstance:Lcom/android/keyguard/util/ViewStyleUtils;

    .line 52
    :cond_0
    sget-object v0, Lcom/android/keyguard/util/ViewStyleUtils;->sInstance:Lcom/android/keyguard/util/ViewStyleUtils;

    return-object v0
.end method


# virtual methods
.method public getColorFromColorType(I)I
    .locals 3
    .param p1, "colorType"    # I

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "resId":I
    packed-switch p1, :pswitch_data_0

    .line 175
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/util/ViewStyleUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    return v1

    .line 153
    :pswitch_0
    sget v0, Lcom/android/keyguard/R$color;->theme_textclock_color:I

    goto :goto_0

    .line 156
    :pswitch_1
    sget v0, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    goto :goto_0

    .line 159
    :pswitch_2
    sget v0, Lcom/android/keyguard/R$color;->theme_keyguard_message_area_text_color:I

    goto :goto_0

    .line 162
    :pswitch_3
    sget v0, Lcom/android/keyguard/R$color;->theme_pin_digit_text_color:I

    goto :goto_0

    .line 165
    :pswitch_4
    sget v0, Lcom/android/keyguard/R$color;->theme_pin_text_color:I

    goto :goto_0

    .line 168
    :pswitch_5
    sget v0, Lcom/android/keyguard/R$color;->theme_pin_klondike_text_color:I

    goto :goto_0

    .line 171
    :pswitch_6
    sget v0, Lcom/android/keyguard/R$color;->theme_keyguard_indication_text_color:I

    goto :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getCurrentLookType()I
    .locals 5

    .prologue
    .line 56
    iget-object v4, p0, Lcom/android/keyguard/util/ViewStyleUtils;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/util/SettingsHelper;->getActiveThemePackage()Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "themePkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/keyguard/util/ViewStyleUtils;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v3

    .line 58
    .local v3, "whiteWp":Z
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    const/4 v1, 0x0

    .line 59
    .local v1, "themeApplied":Z
    :goto_0
    const/4 v0, 0x0

    .line 61
    .local v0, "lookType":I
    if-nez v3, :cond_1

    if-eqz v1, :cond_4

    .line 63
    :cond_1
    if-nez v3, :cond_5

    if-eqz v1, :cond_5

    .line 64
    const/4 v0, 0x1

    .line 70
    :cond_2
    :goto_1
    return v0

    .line 58
    .end local v0    # "lookType":I
    .end local v1    # "themeApplied":Z
    :cond_3
    const/4 v1, 0x1

    .restart local v1    # "themeApplied":Z
    goto :goto_0

    .line 62
    .restart local v0    # "lookType":I
    :cond_4
    const/4 v0, 0x0

    .line 61
    goto :goto_1

    .line 65
    :cond_5
    if-eqz v3, :cond_6

    if-eqz v1, :cond_7

    .line 67
    :cond_6
    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    .line 68
    const/4 v0, 0x3

    goto :goto_1

    .line 66
    :cond_7
    const/4 v0, 0x2

    .line 65
    goto :goto_1
.end method

.method public setTextFontEffect(Landroid/widget/TextView;)V
    .locals 4
    .param p1, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 195
    iget-object v1, p0, Lcom/android/keyguard/util/ViewStyleUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->theme_clockfont_effect_type:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "effect":Ljava/lang/String;
    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 197
    const-string/jumbo v1, "ViewStyleUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "font effect info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v1, p0, Lcom/android/keyguard/util/ViewStyleUtils;->mFontEffectUtil:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->parsingFontEffectString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/android/keyguard/util/ViewStyleUtils;->mFontEffectUtil:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;

    invoke-static {p1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->setTextFontEffect(Landroid/widget/TextView;)V

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    const-string/jumbo v1, "ViewStyleUtils"

    const-string/jumbo v2, "font effect info: null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateButtonOuterlineColor(Landroid/widget/TextView;)V
    .locals 6
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 179
    if-nez p1, :cond_0

    return-void

    .line 180
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    .line 181
    .local v3, "paddingTop":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v0

    .line 182
    .local v0, "paddingBottom":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    .line 183
    .local v1, "paddingLeft":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    .line 184
    .local v2, "paddingRight":I
    iget-object v4, p0, Lcom/android/keyguard/util/ViewStyleUtils;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 186
    iget-object v4, p0, Lcom/android/keyguard/util/ViewStyleUtils;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/keyguard/R$drawable;->ripple_effect_transparent_black_button_drawable:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 185
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 190
    :goto_0
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 178
    return-void

    .line 188
    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/util/ViewStyleUtils;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/keyguard/R$drawable;->ripple_effect_transparent_button_drawable:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public varargs updateFontTypeface(Lcom/android/keyguard/util/ViewStyleUtils$FontType;[Landroid/widget/TextView;)V
    .locals 6
    .param p1, "fontType"    # Lcom/android/keyguard/util/ViewStyleUtils$FontType;
    .param p2, "views"    # [Landroid/widget/TextView;

    .prologue
    .line 212
    if-nez p2, :cond_0

    .line 213
    return-void

    .line 216
    :cond_0
    const/4 v2, 0x0

    .line 217
    .local v2, "path":Ljava/lang/String;
    sget-object v4, Lcom/android/keyguard/util/ViewStyleUtils$FontType;->Clock:Lcom/android/keyguard/util/ViewStyleUtils$FontType;

    if-ne p1, v4, :cond_5

    .line 218
    iget-object v4, p0, Lcom/android/keyguard/util/ViewStyleUtils;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/util/SettingsHelper;->getOpenThemeClockFont()Ljava/lang/String;

    move-result-object v2

    .line 223
    .end local v2    # "path":Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v3, 0x0

    .line 224
    .local v3, "tf":Landroid/graphics/Typeface;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 225
    :cond_2
    const/4 v0, 0x0

    .line 226
    .local v0, "familyName":Ljava/lang/String;
    sget-object v4, Lcom/android/keyguard/util/ViewStyleUtils$FontType;->Clock:Lcom/android/keyguard/util/ViewStyleUtils$FontType;

    if-ne p1, v4, :cond_6

    .line 227
    const-string/jumbo v0, "clock2016"

    .line 231
    .end local v0    # "familyName":Ljava/lang/String;
    :cond_3
    :goto_1
    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    .line 236
    .local v3, "tf":Landroid/graphics/Typeface;
    :goto_2
    if-eqz v3, :cond_8

    .line 237
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    array-length v4, p2

    if-ge v1, v4, :cond_8

    .line 238
    aget-object v4, p2, v1

    if-eqz v4, :cond_4

    .line 239
    aget-object v4, p2, v1

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 237
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 219
    .end local v1    # "i":I
    .end local v3    # "tf":Landroid/graphics/Typeface;
    .restart local v2    # "path":Ljava/lang/String;
    :cond_5
    sget-object v4, Lcom/android/keyguard/util/ViewStyleUtils$FontType;->Numeric:Lcom/android/keyguard/util/ViewStyleUtils$FontType;

    if-ne p1, v4, :cond_1

    .line 220
    iget-object v4, p0, Lcom/android/keyguard/util/ViewStyleUtils;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/util/SettingsHelper;->getOpenThemeNumericFont()Ljava/lang/String;

    move-result-object v2

    .local v2, "path":Ljava/lang/String;
    goto :goto_0

    .line 228
    .end local v2    # "path":Ljava/lang/String;
    .restart local v0    # "familyName":Ljava/lang/String;
    .local v3, "tf":Landroid/graphics/Typeface;
    :cond_6
    sget-object v4, Lcom/android/keyguard/util/ViewStyleUtils$FontType;->Numeric:Lcom/android/keyguard/util/ViewStyleUtils$FontType;

    if-ne p1, v4, :cond_3

    .line 229
    iget-object v4, p0, Lcom/android/keyguard/util/ViewStyleUtils;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/keyguard/R$string;->pinlock_numeric_font_family:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "familyName":Ljava/lang/String;
    goto :goto_1

    .line 233
    .end local v0    # "familyName":Ljava/lang/String;
    :cond_7
    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    .local v3, "tf":Landroid/graphics/Typeface;
    goto :goto_2

    .line 211
    :cond_8
    return-void
.end method

.method public updateImageStyle(III)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "resIdDefaultImage"    # I
    .param p2, "resIdWhiteBgImage"    # I
    .param p3, "colorType"    # I

    .prologue
    .line 121
    const/4 v2, 0x0

    .line 122
    .local v2, "resId":I
    const/4 v0, 0x0

    .line 124
    .local v0, "filter":Landroid/graphics/PorterDuffColorFilter;
    invoke-virtual {p0}, Lcom/android/keyguard/util/ViewStyleUtils;->getCurrentLookType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 143
    .end local v0    # "filter":Landroid/graphics/PorterDuffColorFilter;
    :goto_0
    const/4 v1, 0x0

    .line 144
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/keyguard/util/ViewStyleUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 145
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 146
    return-object v1

    .line 126
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v0    # "filter":Landroid/graphics/PorterDuffColorFilter;
    :pswitch_0
    move v2, p1

    .line 127
    goto :goto_0

    .line 129
    :pswitch_1
    move v2, p2

    .line 130
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .end local v0    # "filter":Landroid/graphics/PorterDuffColorFilter;
    invoke-virtual {p0, p3}, Lcom/android/keyguard/util/ViewStyleUtils;->getColorFromColorType(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 131
    .local v0, "filter":Landroid/graphics/PorterDuffColorFilter;
    goto :goto_0

    .line 133
    .local v0, "filter":Landroid/graphics/PorterDuffColorFilter;
    :pswitch_2
    move v2, p2

    .line 134
    goto :goto_0

    .line 136
    :pswitch_3
    move v2, p2

    .line 137
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .end local v0    # "filter":Landroid/graphics/PorterDuffColorFilter;
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const v4, -0xbbbbbc

    invoke-direct {v0, v4, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 138
    .local v0, "filter":Landroid/graphics/PorterDuffColorFilter;
    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public updateViewStyle(Landroid/widget/TextView;I)V
    .locals 5
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "colorType"    # I

    .prologue
    .line 74
    if-nez p1, :cond_0

    .line 75
    return-void

    .line 78
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/keyguard/util/ViewStyleUtils;->getColorFromColorType(I)I

    move-result v1

    .line 79
    .local v1, "textColor":I
    const v0, -0xbbbbbc

    .line 81
    .local v0, "shadowColor":I
    invoke-virtual {p1}, Landroid/widget/TextView;->semClearAllTextEffect()V

    .line 82
    invoke-virtual {p0}, Lcom/android/keyguard/util/ViewStyleUtils;->getCurrentLookType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 108
    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    invoke-virtual {p1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getShadowDx()F

    move-result v3

    invoke-virtual {p1}, Landroid/widget/TextView;->getShadowDy()F

    move-result v4

    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 73
    return-void

    .line 84
    :pswitch_0
    const/high16 v0, -0x80000000

    .line 85
    goto :goto_0

    .line 87
    :pswitch_1
    const/4 v0, 0x0

    .line 88
    goto :goto_0

    .line 91
    :pswitch_2
    const v1, -0xbbbbbc

    .line 92
    const/4 v0, 0x0

    .line 106
    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
