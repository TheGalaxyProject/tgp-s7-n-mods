.class Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction$LearnMoreSpan;
.super Landroid/text/style/URLSpan;
.source "FingerprintEnrollIntroduction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LearnMoreSpan"
.end annotation


# static fields
.field private static final TYPEFACE_MEDIUM:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 214
    const-string/jumbo v0, "sans-serif-medium"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 213
    sput-object v0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction$LearnMoreSpan;->TYPEFACE_MEDIUM:Landroid/graphics/Typeface;

    .line 211
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 217
    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public static linkify(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 14
    .param p0, "rawText"    # Ljava/lang/CharSequence;
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 246
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 247
    .local v4, "msg":Landroid/text/SpannableString;
    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v9

    const-class v10, Landroid/text/Annotation;

    invoke-virtual {v4, v8, v9, v10}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/Annotation;

    .line 248
    .local v6, "spans":[Landroid/text/Annotation;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 249
    move-object v5, p0

    .line 250
    .local v5, "ret":Ljava/lang/CharSequence;
    array-length v10, v6

    move v9, v8

    :goto_0
    if-ge v9, v10, :cond_0

    aget-object v0, v6, v9

    .line 251
    .local v0, "annotation":Landroid/text/Annotation;
    invoke-virtual {v4, v0}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 252
    .local v7, "start":I
    invoke-virtual {v4, v0}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 253
    .local v2, "end":I
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-interface {v5, v8, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    aput-object v12, v11, v8

    .line 254
    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v12

    invoke-virtual {v4, v2, v12}, Landroid/text/SpannableString;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v11, v13

    .line 253
    invoke-static {v11}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 250
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 256
    .end local v0    # "annotation":Landroid/text/Annotation;
    .end local v2    # "end":I
    .end local v7    # "start":I
    :cond_0
    return-object v5

    .line 258
    .end local v5    # "ret":Ljava/lang/CharSequence;
    :cond_1
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 259
    .local v1, "builder":Landroid/text/SpannableStringBuilder;
    array-length v9, v6

    :goto_1
    if-ge v8, v9, :cond_2

    aget-object v0, v6, v8

    .line 260
    .restart local v0    # "annotation":Landroid/text/Annotation;
    invoke-virtual {v4, v0}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 261
    .restart local v7    # "start":I
    invoke-virtual {v4, v0}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 262
    .restart local v2    # "end":I
    new-instance v3, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction$LearnMoreSpan;

    invoke-direct {v3, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction$LearnMoreSpan;-><init>(Ljava/lang/String;)V

    .line 263
    .local v3, "link":Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction$LearnMoreSpan;
    invoke-virtual {v4, v3}, Landroid/text/SpannableString;->getSpanFlags(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v1, v3, v7, v2, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 259
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 265
    .end local v0    # "annotation":Landroid/text/Annotation;
    .end local v2    # "end":I
    .end local v3    # "link":Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction$LearnMoreSpan;
    .end local v7    # "start":I
    :cond_2
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 223
    .local v0, "ctx":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction$LearnMoreSpan;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 224
    .local v2, "intent":Landroid/content/Intent;
    if-nez v2, :cond_0

    .line 225
    const-string/jumbo v3, "LearnMoreSpan"

    const-string/jumbo v4, "Null help intent."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-void

    .line 231
    :cond_0
    const/4 v3, 0x3

    :try_start_0
    invoke-virtual {p1, v2, v3}, Landroid/view/View;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v1

    .line 233
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v3, "LearnMoreSpan"

    .line 234
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Actvity was not found for intent, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 233
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 240
    invoke-super {p0, p1}, Landroid/text/style/URLSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 241
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 242
    sget-object v0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction$LearnMoreSpan;->TYPEFACE_MEDIUM:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 239
    return-void
.end method
