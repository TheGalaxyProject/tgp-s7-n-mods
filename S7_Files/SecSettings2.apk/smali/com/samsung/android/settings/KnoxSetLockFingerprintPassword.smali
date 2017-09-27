.class public Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;
.super Landroid/app/Activity;
.source "KnoxSetLockFingerprintPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# static fields
.field private static mIsFromKnoxIris:Z


# instance fields
.field private hasPwdPatternRestriction:Z

.field private mCancelButton:Landroid/widget/LinearLayout;

.field private mCheckSimplePassword:Z

.field private mHeading:Landroid/widget/TextView;

.field private mIsAlphaMode:Z

.field private mIsValidEntry:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextButton:Landroid/widget/LinearLayout;

.field private mNextText:Landroid/widget/TextView;

.field private mOldPassword:Ljava/lang/String;

.field private mPasswordConfirm:Landroid/widget/EditText;

.field private mPasswordEntry:Landroid/widget/EditText;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mPasswordMinLetters:I

.field private mPasswordMinLowerCase:I

.field private mPasswordMinNonLetter:I

.field private mPasswordMinNumeric:I

.field private mPasswordMinSymbols:I

.field private mPasswordMinUpperCase:I

.field private mPwdChangeEnforceStatus:I

.field private mRequestedQuality:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mHeading:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mIsValidEntry:Z

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordConfirm:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mIsValidEntry:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->handleNext()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->setNextEnabled()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mIsFromKnoxIris:Z

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    const/high16 v0, 0x40000

    iput v0, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    .line 69
    const/16 v0, 0x10

    iput v0, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMaxLength:I

    .line 70
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLength:I

    .line 71
    iput v1, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLetters:I

    .line 72
    iput v1, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinUpperCase:I

    .line 73
    iput v1, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLowerCase:I

    .line 74
    iput v1, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinSymbols:I

    .line 75
    iput v1, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinNumeric:I

    .line 76
    iput v1, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinNonLetter:I

    .line 78
    iput-boolean v1, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mIsValidEntry:Z

    .line 79
    iput-boolean v1, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->hasPwdPatternRestriction:Z

    .line 88
    iput-boolean v1, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mCheckSimplePassword:Z

    .line 90
    iput v1, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPwdChangeEnforceStatus:I

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mOldPassword:Ljava/lang/String;

    .line 45
    return-void
.end method

.method private checkRepeatingChars(Ljava/lang/String;)Z
    .locals 7
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 595
    const/4 v2, 0x0

    .line 597
    .local v2, "nLoop":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_2

    .line 598
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 599
    .local v0, "beforeChar":C
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 600
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v0, v3, :cond_0

    .line 601
    add-int/lit8 v2, v2, 0x1

    .line 604
    :goto_1
    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    .line 605
    const-string/jumbo v3, "ChooseLockPassword"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "has internal loop password : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    return v6

    .line 603
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 608
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 599
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 611
    .end local v0    # "beforeChar":C
    .end local v1    # "i":I
    :cond_2
    return v4
.end method

.method private checkSequentialChars(Ljava/lang/String;)Z
    .locals 7
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 571
    const-string/jumbo v4, "0123456789"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v1, v4, -0x4

    .line 572
    .local v1, "maxLoop":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-gt v0, v1, :cond_2

    .line 573
    const-string/jumbo v4, "0123456789"

    add-int/lit8 v5, v0, 0x4

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 574
    .local v2, "pattern":Ljava/lang/String;
    const-string/jumbo v4, "9876543210"

    add-int/lit8 v5, v0, 0x4

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 575
    .local v3, "reversePattern":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 576
    :cond_0
    const-string/jumbo v4, "ChooseLockPassword"

    const-string/jumbo v5, "has Sequential password"

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    return v6

    .line 572
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 581
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "reversePattern":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "abcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v1, v4, -0x4

    .line 582
    const/4 v0, 0x0

    :goto_1
    if-gt v0, v1, :cond_5

    .line 583
    const-string/jumbo v4, "abcdefghijklmnopqrstuvwxyz"

    add-int/lit8 v5, v0, 0x4

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 584
    .restart local v2    # "pattern":Ljava/lang/String;
    const-string/jumbo v4, "zyxwvutsrqponmlkjihgfedcba"

    add-int/lit8 v5, v0, 0x4

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 585
    .restart local v3    # "reversePattern":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 586
    :cond_3
    const-string/jumbo v4, "ChooseLockPassword"

    const-string/jumbo v5, "has Sequential password"

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    return v6

    .line 582
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 591
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "reversePattern":Ljava/lang/String;
    :cond_5
    const/4 v4, 0x0

    return v4
.end method

.method public static createIntent(Landroid/content/Context;IIIZZ)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "quality"    # I
    .param p2, "minLength"    # I
    .param p3, "maxLength"    # I
    .param p4, "requirePasswordToDecrypt"    # Z
    .param p5, "confirmCredentials"    # Z

    .prologue
    .line 105
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 106
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "lockscreen.password_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    const-string/jumbo v1, "lockscreen.password_min"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    const-string/jumbo v1, "lockscreen.password_max"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    const-string/jumbo v1, "confirm_credentials"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 110
    const-string/jumbo v1, "extra_require_password"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 111
    return-object v0
.end method

.method private handleNext()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/16 v6, 0x10

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 324
    iget-object v4, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, "pin":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordConfirm:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 326
    .local v2, "pin2":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 327
    const-string/jumbo v4, "persona"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    .line 328
    .local v0, "mPm":Lcom/samsung/android/knox/SemPersonaManager;
    sget-boolean v4, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mIsFromKnoxIris:Z

    if-eqz v4, :cond_0

    .line 329
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v0, v4, v7}, Lcom/samsung/android/knox/SemPersonaManager;->setIsFingerAsSupplement(IZ)V

    .line 330
    iget-object v4, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricLockscreen(II)V

    .line 331
    iget-object v4, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v8, v5}, Lcom/android/internal/widget/LockPatternUtils;->removeBiometricLockscreen(II)V

    .line 332
    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "knox_finger_print_plus"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static {v4, v5, v7, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 339
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v4, v1, v9, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    .line 340
    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->setResult(I)V

    .line 341
    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->finish()V

    .line 323
    .end local v0    # "mPm":Lcom/samsung/android/knox/SemPersonaManager;
    :goto_1
    return-void

    .line 334
    .restart local v0    # "mPm":Lcom/samsung/android/knox/SemPersonaManager;
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v0, v4, v8}, Lcom/samsung/android/knox/SemPersonaManager;->setIsFingerAsSupplement(IZ)V

    .line 335
    iget-object v4, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v8, v5}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricLockscreen(II)V

    .line 336
    iget-object v4, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->removeBiometricLockscreen(II)V

    .line 337
    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "knox_finger_print_plus"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static {v4, v5, v7, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 344
    .end local v0    # "mPm":Lcom/samsung/android/knox/SemPersonaManager;
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordConfirm:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 345
    .local v3, "tmp":Ljava/lang/CharSequence;
    if-eqz v3, :cond_2

    move-object v4, v3

    .line 346
    check-cast v4, Landroid/text/Spannable;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {v4, v7, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 348
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mHeading:Landroid/widget/TextView;

    const v5, 0x7f0b14be

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private setNextEnabled()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 353
    iget-boolean v0, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mIsValidEntry:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordConfirm:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mNextButton:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 355
    iget-object v0, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mNextText:Landroid/widget/TextView;

    const-string/jumbo v1, "#252525"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 352
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mNextButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 358
    iget-object v0, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mNextText:Landroid/widget/TextView;

    const-string/jumbo v1, "#47252525"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 31
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 369
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->hasPwdPatternRestriction:Z

    move/from16 v27, v0

    if-eqz v27, :cond_6

    .line 371
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v27, 0x0

    aput-object p1, v22, v27

    .line 372
    .local v22, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v27, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string/jumbo v28, "hasForbiddenNumericSequence"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    .line 373
    .local v13, "hasForbiddenNumericSequence":I
    const-string/jumbo v27, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string/jumbo v28, "getMaximumNumericSequenceLength"

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 374
    .local v9, "getMaximumNumericSequenceLength":I
    const-string/jumbo v27, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string/jumbo v28, "hasForbiddenCharacterSequence"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 375
    .local v11, "hasForbiddenCharacterSequence":I
    const-string/jumbo v27, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string/jumbo v28, "getMaximumCharacterSequenceLength"

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 376
    .local v8, "getMaximumCharacterSequenceLength":I
    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v27, 0x0

    aput-object p1, v23, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mOldPassword:Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aput-object v27, v23, v28

    .line 377
    .local v23, "selectionArgsStrDist":[Ljava/lang/String;
    const-string/jumbo v27, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string/jumbo v28, "hasForbiddenStringDistance"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 378
    .local v14, "hasForbiddenStringDistance":I
    const-string/jumbo v27, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string/jumbo v28, "getMinimumCharacterChangeLength"

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 379
    .local v10, "getMinimumCharacterChangeLength":I
    const-string/jumbo v27, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string/jumbo v28, "hasForbiddenData"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 380
    .local v12, "hasForbiddenData":I
    const-string/jumbo v27, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string/jumbo v28, "hasMaxRepeatedCharacters"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 381
    .local v15, "hasMaxRepeatedCharacters":I
    const-string/jumbo v27, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string/jumbo v28, "getMaximumCharacterOccurences"

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 382
    .local v7, "getMaximumCharacterOccurences":I
    const-string/jumbo v27, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string/jumbo v28, "isPasswordPatternMatched"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v17

    .line 384
    .local v17, "isPasswordPatternMatched":I
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v13, v0, :cond_0

    .line 385
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    add-int/lit8 v28, v9, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    const v28, 0x7f0b0887

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    return-object v27

    .line 387
    :cond_0
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v11, v0, :cond_1

    .line 388
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    add-int/lit8 v28, v8, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    const v28, 0x7f0b0886

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    return-object v27

    .line 390
    :cond_1
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v14, v0, :cond_2

    .line 391
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    const v28, 0x7f0b0889

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    return-object v27

    .line 393
    :cond_2
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v12, v0, :cond_3

    .line 394
    const v27, 0x7f0b0888

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getString(I)Ljava/lang/String;

    move-result-object v27

    return-object v27

    .line 396
    :cond_3
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v15, v0, :cond_4

    .line 397
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    const v28, 0x7f0b088a

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    return-object v27

    .line 399
    :cond_4
    if-nez v17, :cond_5

    .line 400
    const v27, 0x7f0b088b

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getString(I)Ljava/lang/String;

    move-result-object v27

    return-object v27

    .line 402
    :cond_5
    const/16 v27, 0x0

    return-object v27

    .line 407
    .end local v7    # "getMaximumCharacterOccurences":I
    .end local v8    # "getMaximumCharacterSequenceLength":I
    .end local v9    # "getMaximumNumericSequenceLength":I
    .end local v10    # "getMinimumCharacterChangeLength":I
    .end local v11    # "hasForbiddenCharacterSequence":I
    .end local v12    # "hasForbiddenData":I
    .end local v13    # "hasForbiddenNumericSequence":I
    .end local v14    # "hasForbiddenStringDistance":I
    .end local v15    # "hasMaxRepeatedCharacters":I
    .end local v17    # "isPasswordPatternMatched":I
    .end local v22    # "selectionArgs":[Ljava/lang/String;
    .end local v23    # "selectionArgsStrDist":[Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mCheckSimplePassword:Z

    move/from16 v27, v0

    if-eqz v27, :cond_a

    .line 408
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->checkSequentialChars(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_8

    .line 409
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mIsAlphaMode:Z

    move/from16 v27, v0

    if-eqz v27, :cond_7

    .line 410
    const v27, 0x7f0b06f9

    .line 409
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getString(I)Ljava/lang/String;

    move-result-object v27

    return-object v27

    .line 411
    :cond_7
    const v27, 0x7f0b08cc

    goto :goto_0

    .line 414
    :cond_8
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->checkRepeatingChars(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 415
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mIsAlphaMode:Z

    move/from16 v27, v0

    if-eqz v27, :cond_9

    .line 416
    const v27, 0x7f0b0714

    .line 415
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getString(I)Ljava/lang/String;

    move-result-object v27

    return-object v27

    .line 417
    :cond_9
    const v27, 0x7f0b08cb

    goto :goto_1

    .line 421
    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLength:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_b

    .line 422
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLength:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    const v28, 0x7f0b11c4

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    return-object v27

    .line 424
    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMaxLength:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_c

    .line 425
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMaxLength:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    const v28, 0x7f0b11c7

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    return-object v27

    .line 428
    :cond_c
    const/16 v18, 0x0

    .line 429
    .local v18, "letters":I
    const/16 v21, 0x0

    .line 430
    .local v21, "numbers":I
    const/16 v19, 0x0

    .line 431
    .local v19, "lowercase":I
    const/16 v25, 0x0

    .line 432
    .local v25, "symbols":I
    const/16 v26, 0x0

    .line 433
    .local v26, "uppercase":I
    const/16 v20, 0x0

    .line 434
    .local v20, "nonletter":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v27

    move/from16 v0, v16

    move/from16 v1, v27

    if-ge v0, v1, :cond_12

    .line 435
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 437
    .local v6, "c":C
    const/16 v27, 0x20

    move/from16 v0, v27

    if-lt v6, v0, :cond_d

    const/16 v27, 0x7f

    move/from16 v0, v27

    if-le v6, v0, :cond_e

    .line 438
    :cond_d
    const v27, 0x7f0b11cb

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getString(I)Ljava/lang/String;

    move-result-object v27

    return-object v27

    .line 440
    :cond_e
    const/16 v27, 0x30

    move/from16 v0, v27

    if-lt v6, v0, :cond_f

    const/16 v27, 0x39

    move/from16 v0, v27

    if-gt v6, v0, :cond_f

    .line 441
    add-int/lit8 v21, v21, 0x1

    .line 442
    add-int/lit8 v20, v20, 0x1

    .line 434
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 443
    :cond_f
    const/16 v27, 0x41

    move/from16 v0, v27

    if-lt v6, v0, :cond_10

    const/16 v27, 0x5a

    move/from16 v0, v27

    if-gt v6, v0, :cond_10

    .line 444
    add-int/lit8 v18, v18, 0x1

    .line 445
    add-int/lit8 v26, v26, 0x1

    .line 443
    goto :goto_3

    .line 446
    :cond_10
    const/16 v27, 0x61

    move/from16 v0, v27

    if-lt v6, v0, :cond_11

    const/16 v27, 0x7a

    move/from16 v0, v27

    if-gt v6, v0, :cond_11

    .line 447
    add-int/lit8 v18, v18, 0x1

    .line 448
    add-int/lit8 v19, v19, 0x1

    .line 446
    goto :goto_3

    .line 450
    :cond_11
    add-int/lit8 v25, v25, 0x1

    .line 451
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 454
    .end local v6    # "c":C
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    move/from16 v27, v0

    const/high16 v28, 0x20000

    move/from16 v0, v28

    move/from16 v1, v27

    if-eq v0, v1, :cond_13

    .line 455
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    move/from16 v27, v0

    const/high16 v28, 0x30000

    move/from16 v0, v28

    move/from16 v1, v27

    if-ne v0, v1, :cond_16

    .line 456
    :cond_13
    if-gtz v18, :cond_14

    if-lez v25, :cond_15

    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPwdChangeEnforceStatus:I

    move/from16 v27, v0

    if-gtz v27, :cond_15

    .line 459
    const v27, 0x7f0b11c9

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getString(I)Ljava/lang/String;

    move-result-object v27

    return-object v27

    .line 462
    :cond_15
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->maxLengthSequence(Ljava/lang/String;)I

    move-result v24

    .line 463
    .local v24, "sequence":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    move/from16 v27, v0

    const/high16 v28, 0x30000

    move/from16 v0, v28

    move/from16 v1, v27

    if-ne v0, v1, :cond_24

    .line 464
    const/16 v27, 0x3

    move/from16 v0, v24

    move/from16 v1, v27

    if-le v0, v1, :cond_24

    .line 465
    const v27, 0x7f0b11d0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getString(I)Ljava/lang/String;

    move-result-object v27

    return-object v27

    .line 467
    .end local v24    # "sequence":I
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    move/from16 v27, v0

    const/high16 v28, 0x60000

    move/from16 v0, v28

    move/from16 v1, v27

    if-ne v0, v1, :cond_1c

    .line 468
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLetters:I

    move/from16 v27, v0

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_17

    .line 469
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    .line 470
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLetters:I

    move/from16 v28, v0

    const v29, 0x7f130007

    .line 469
    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    .line 471
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLetters:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v30, 0x0

    aput-object v29, v28, v30

    .line 469
    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    return-object v27

    .line 472
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinNumeric:I

    move/from16 v27, v0

    move/from16 v0, v21

    move/from16 v1, v27

    if-ge v0, v1, :cond_18

    .line 473
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    .line 474
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinNumeric:I

    move/from16 v28, v0

    const v29, 0x7f13000a

    .line 473
    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    .line 475
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinNumeric:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v30, 0x0

    aput-object v29, v28, v30

    .line 473
    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    return-object v27

    .line 476
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLowerCase:I

    move/from16 v27, v0

    move/from16 v0, v19

    move/from16 v1, v27

    if-ge v0, v1, :cond_19

    .line 477
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    .line 478
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLowerCase:I

    move/from16 v28, v0

    const v29, 0x7f130008

    .line 477
    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    .line 479
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLowerCase:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v30, 0x0

    aput-object v29, v28, v30

    .line 477
    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    return-object v27

    .line 480
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinUpperCase:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_1a

    .line 481
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    .line 482
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinUpperCase:I

    move/from16 v28, v0

    const v29, 0x7f130009

    .line 481
    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    .line 483
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinUpperCase:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v30, 0x0

    aput-object v29, v28, v30

    .line 481
    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    return-object v27

    .line 484
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinSymbols:I

    move/from16 v27, v0

    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_1b

    .line 485
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    .line 486
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinSymbols:I

    move/from16 v28, v0

    const v29, 0x7f13000b

    .line 485
    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    .line 487
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinSymbols:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v30, 0x0

    aput-object v29, v28, v30

    .line 485
    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    return-object v27

    .line 488
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinNonLetter:I

    move/from16 v27, v0

    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_24

    .line 489
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    .line 490
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinNonLetter:I

    move/from16 v28, v0

    const v29, 0x7f13000c

    .line 489
    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    .line 491
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinNonLetter:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v30, 0x0

    aput-object v29, v28, v30

    .line 489
    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    return-object v27

    .line 493
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    move/from16 v27, v0

    const/high16 v28, 0x70000

    move/from16 v0, v28

    move/from16 v1, v27

    if-ne v0, v1, :cond_1f

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v27

    const/16 v28, 0x64

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_1f

    .line 498
    if-gtz v18, :cond_1d

    if-lez v25, :cond_1e

    .line 499
    :cond_1d
    const v27, 0x7f0b087f

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getString(I)Ljava/lang/String;

    move-result-object v27

    return-object v27

    .line 502
    :cond_1e
    const/16 v27, 0x0

    return-object v27

    .line 505
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    move/from16 v27, v0

    .line 504
    const/high16 v28, 0x40000

    move/from16 v0, v28

    move/from16 v1, v27

    if-ne v0, v1, :cond_21

    const/4 v4, 0x1

    .line 507
    .local v4, "alphabetic":Z
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    move/from16 v27, v0

    .line 506
    const/high16 v28, 0x50000

    move/from16 v0, v28

    move/from16 v1, v27

    if-ne v0, v1, :cond_22

    const/4 v5, 0x1

    .line 508
    .local v5, "alphanumeric":Z
    :goto_5
    if-nez v4, :cond_20

    if-eqz v5, :cond_23

    :cond_20
    if-nez v18, :cond_23

    .line 509
    const v27, 0x7f0b11cc

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getString(I)Ljava/lang/String;

    move-result-object v27

    return-object v27

    .line 504
    .end local v4    # "alphabetic":Z
    .end local v5    # "alphanumeric":Z
    :cond_21
    const/4 v4, 0x0

    .restart local v4    # "alphabetic":Z
    goto :goto_4

    .line 506
    :cond_22
    const/4 v5, 0x0

    .restart local v5    # "alphanumeric":Z
    goto :goto_5

    .line 511
    :cond_23
    if-eqz v5, :cond_24

    if-nez v21, :cond_24

    .line 512
    const v27, 0x7f0b11cd

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getString(I)Ljava/lang/String;

    move-result-object v27

    return-object v27

    .line 516
    .end local v4    # "alphabetic":Z
    .end local v5    # "alphanumeric":Z
    :cond_24
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMaxLength:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_26

    .line 517
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mIsAlphaMode:Z

    move/from16 v27, v0

    if-eqz v27, :cond_25

    .line 518
    const v27, 0x7f0b11c7

    .line 517
    :goto_6
    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    .line 519
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMaxLength:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v30, 0x0

    aput-object v29, v28, v30

    .line 517
    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    return-object v27

    .line 519
    :cond_25
    const v27, 0x7f0b11c8

    goto :goto_6

    .line 566
    :cond_26
    const/16 v27, 0x0

    return-object v27
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 629
    iget-object v1, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 630
    iget-object v1, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, "errMsg":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 632
    iget-object v1, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mHeading:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 633
    iput-boolean v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mIsValidEntry:Z

    .line 641
    .end local v0    # "errMsg":Ljava/lang/String;
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->setNextEnabled()V

    .line 628
    return-void

    .line 635
    .restart local v0    # "errMsg":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mHeading:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 636
    iput-boolean v4, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mIsValidEntry:Z

    goto :goto_0

    .line 639
    .end local v0    # "errMsg":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mHeading:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b07b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/android/settings/Utils;->getKnoxName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 645
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 616
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 615
    :goto_0
    :pswitch_0
    return-void

    .line 618
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->handleNext()V

    goto :goto_0

    .line 622
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->finish()V

    goto :goto_0

    .line 616
    :pswitch_data_0
    .packed-switch 0x7f110426
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v11, 0x70000

    const/4 v10, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 143
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/android/settings/Utils;->getKnoxName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    const v8, 0x7f0b07b9

    invoke-virtual {p0, v8, v5}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->setTitle(Ljava/lang/CharSequence;)V

    .line 147
    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 148
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "lockscreen.password_type"

    iget v8, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    .line 149
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v5, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 150
    const v5, 0x7f040152

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->setContentView(I)V

    .line 152
    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v5, "true"

    aput-object v5, v4, v7

    .line 153
    .local v4, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v5, "content://com.sec.knox.provider/PasswordPolicy1"

    .line 154
    const-string/jumbo v8, "getRequiredPwdPatternRestrictions"

    .line 153
    invoke-static {p0, v5, v8, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 156
    .local v1, "getRequiredPwdPatternRestrictions":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    .line 157
    iput-boolean v6, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->hasPwdPatternRestriction:Z

    .line 159
    :cond_0
    const-string/jumbo v5, "content://com.sec.knox.provider/PasswordPolicy2"

    .line 160
    const-string/jumbo v8, "isChangeRequested"

    const/4 v9, 0x0

    .line 159
    invoke-static {p0, v5, v8, v9}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 161
    .local v3, "isChangeRequested":I
    iput v3, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPwdChangeEnforceStatus:I

    .line 162
    iget v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPwdChangeEnforceStatus:I

    if-lez v5, :cond_1

    .line 163
    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 164
    iget-object v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality(I)I

    move-result v5

    const/high16 v8, 0x20000

    if-lt v5, v8, :cond_1

    .line 165
    iget-object v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality(I)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    .line 169
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v8, "isFromKnoxIris"

    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mIsFromKnoxIris:Z

    .line 171
    iput-boolean v7, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mCheckSimplePassword:Z

    .line 175
    const-string/jumbo v5, "lockscreen.password_type"

    .line 176
    iget v8, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    .line 175
    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 176
    iget-object v8, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 177
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    .line 176
    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality(I)I

    move-result v8

    .line 175
    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    .line 180
    const-string/jumbo v5, "lockscreen.password_min"

    iget v8, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLength:I

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 178
    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 181
    iget-object v8, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength(I)I

    move-result v8

    .line 178
    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLength:I

    .line 182
    const-string/jumbo v5, "lockscreen.password_max"

    iget v8, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMaxLength:I

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMaxLength:I

    .line 183
    const-string/jumbo v5, "lockscreen.password_min_letters"

    .line 184
    iget v8, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLetters:I

    .line 183
    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 184
    iget-object v8, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 185
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    .line 184
    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLetters(I)I

    move-result v8

    .line 183
    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLetters:I

    .line 186
    const-string/jumbo v5, "lockscreen.password_min_uppercase"

    .line 187
    iget v8, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinUpperCase:I

    .line 186
    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 187
    iget-object v8, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 188
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    .line 187
    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumUpperCase(I)I

    move-result v8

    .line 186
    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinUpperCase:I

    .line 189
    const-string/jumbo v5, "lockscreen.password_min_lowercase"

    .line 190
    iget v8, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLowerCase:I

    .line 189
    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 190
    iget-object v8, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 191
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    .line 190
    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLowerCase(I)I

    move-result v8

    .line 189
    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLowerCase:I

    .line 192
    const-string/jumbo v5, "lockscreen.password_min_numeric"

    .line 193
    iget v8, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinNumeric:I

    .line 192
    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 193
    iget-object v8, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 194
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    .line 193
    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNumeric(I)I

    move-result v8

    .line 192
    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinNumeric:I

    .line 195
    const-string/jumbo v5, "lockscreen.password_min_symbols"

    .line 196
    iget v8, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinSymbols:I

    .line 195
    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 196
    iget-object v8, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 197
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    .line 196
    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumSymbols(I)I

    move-result v8

    .line 195
    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinSymbols:I

    .line 198
    const-string/jumbo v5, "lockscreen.password_min_nonletter"

    .line 199
    iget v8, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinNonLetter:I

    .line 198
    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 199
    iget-object v8, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 200
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    .line 199
    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNonLetter(I)I

    move-result v8

    .line 198
    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinNonLetter:I

    .line 201
    iget v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    const/high16 v8, 0x40000

    if-eq v8, v5, :cond_2

    .line 202
    iget v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    const/high16 v8, 0x50000

    if-ne v8, v5, :cond_4

    :cond_2
    move v5, v6

    .line 201
    :goto_0
    iput-boolean v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mIsAlphaMode:Z

    .line 209
    const-string/jumbo v5, "lockscreen.password_old"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mOldPassword:Ljava/lang/String;

    .line 210
    const/4 v0, 0x4

    .line 211
    .local v0, "MIN_PWD_LENGTH":I
    iget v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLength:I

    if-lt v5, v10, :cond_8

    iget v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLength:I

    iget v8, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMaxLength:I

    if-ge v5, v8, :cond_8

    .line 219
    :cond_3
    :goto_1
    const v5, 0x7f1101a5

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mHeading:Landroid/widget/TextView;

    .line 220
    sget-boolean v5, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mIsFromKnoxIris:Z

    if-eqz v5, :cond_a

    .line 221
    iget-object v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mHeading:Landroid/widget/TextView;

    new-array v6, v6, [Ljava/lang/Object;

    iget v8, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLength:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const v8, 0x7f0b0787

    invoke-virtual {p0, v8, v6}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    :goto_2
    const v5, 0x7f110429

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mNextText:Landroid/widget/TextView;

    .line 226
    iget-object v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mNextText:Landroid/widget/TextView;

    const-string/jumbo v6, "#47252525"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 227
    const v5, 0x7f1101a6

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordEntry:Landroid/widget/EditText;

    .line 228
    iget-object v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 229
    iget-object v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v6, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword$1;-><init>(Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 244
    const v5, 0x7f110425

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordConfirm:Landroid/widget/EditText;

    .line 245
    iget-object v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordConfirm:Landroid/widget/EditText;

    new-instance v6, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword$2;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword$2;-><init>(Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 269
    iget-object v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordConfirm:Landroid/widget/EditText;

    new-instance v6, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword$3;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword$3;-><init>(Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 283
    iget-object v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordConfirm:Landroid/widget/EditText;

    new-instance v6, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword$4;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword$4;-><init>(Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 294
    iget-object v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v6, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword$5;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword$5;-><init>(Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 314
    const v5, 0x7f110426

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mCancelButton:Landroid/widget/LinearLayout;

    .line 315
    iget-object v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mCancelButton:Landroid/widget/LinearLayout;

    invoke-virtual {v5, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    const v5, 0x7f110428

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mNextButton:Landroid/widget/LinearLayout;

    .line 318
    iget-object v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mNextButton:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 319
    iget-object v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mNextButton:Landroid/widget/LinearLayout;

    invoke-virtual {v5, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    return-void

    .line 203
    .end local v0    # "MIN_PWD_LENGTH":I
    :cond_4
    iget v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    const/high16 v8, 0x60000

    if-eq v8, v5, :cond_2

    .line 204
    iget-boolean v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->hasPwdPatternRestriction:Z

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    if-ne v11, v5, :cond_2

    .line 205
    :cond_5
    iget v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPwdChangeEnforceStatus:I

    if-lez v5, :cond_7

    .line 206
    iget v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    if-eq v11, v5, :cond_6

    move v5, v6

    goto/16 :goto_0

    :cond_6
    move v5, v7

    goto/16 :goto_0

    :cond_7
    move v5, v7

    .line 205
    goto/16 :goto_0

    .line 213
    .restart local v0    # "MIN_PWD_LENGTH":I
    :cond_8
    iget v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLength:I

    if-ge v5, v10, :cond_9

    .line 214
    iput v10, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLength:I

    goto/16 :goto_1

    .line 215
    :cond_9
    iget v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLength:I

    iget v8, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMaxLength:I

    if-le v5, v8, :cond_3

    .line 216
    iget v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMaxLength:I

    iput v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLength:I

    goto/16 :goto_1

    .line 223
    :cond_a
    iget-object v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mHeading:Landroid/widget/TextView;

    new-array v6, v6, [Ljava/lang/Object;

    iget v8, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLength:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const v8, 0x7f0b0690

    invoke-virtual {p0, v8, v6}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 649
    return-void
.end method
