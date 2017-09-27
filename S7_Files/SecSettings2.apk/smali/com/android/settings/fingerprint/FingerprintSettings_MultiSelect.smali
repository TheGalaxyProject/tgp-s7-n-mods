.class public Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "FingerprintSettings_MultiSelect.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$1;,
        Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$2;,
        Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$3;,
        Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$4;
    }
.end annotation


# static fields
.field private static final ENABLE_SURVEY_MODE:Ljava/lang/String;

.field private static mSalesCode:Ljava/lang/String;

.field private static selectedId:I


# instance fields
.field TwFingerprintultiSelectedListener:Landroid/widget/AdapterView$SemOnMultiSelectedListener;

.field private actionBar:Landroid/app/ActionBar;

.field checkBoxRunnable:Ljava/lang/Runnable;

.field private isKeepEnrollSession:Z

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteAllDialog:Landroid/app/AlertDialog;

.field private mDeleteDialog:Landroid/app/AlertDialog;

.field private mEnrolledFingerCount:I

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private final mHandler:Landroid/os/Handler;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mRegisterCategory:Landroid/preference/PreferenceCategory;

.field private mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

.field private mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

.field private mSelectAllCheckbox:Landroid/widget/CheckBox;

.field private mSelectedFingerprintTextView:Landroid/widget/TextView;

.field private mUserId:I

.field private originalContentStart:I

.field private selectionChecklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private twselectedChecklist:[Z

.field private twselectionChecklist:[Z


# direct methods
.method static synthetic -get0(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get4()I
    .locals 1

    sget v0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectedId:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Lcom/android/settings/fingerprint/FingerPrintRenameDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    return-object p1
.end method

.method static synthetic -set3(I)I
    .locals 0

    sput p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectedId:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;Landroid/hardware/fingerprint/Fingerprint;)Z
    .locals 1
    .param p1, "fingerprint"    # Landroid/hardware/fingerprint/Fingerprint;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->checkFinishDeleteOperation(Landroid/hardware/fingerprint/Fingerprint;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;Z)Z
    .locals 1
    .param p1, "isResetFeature"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->deleteFingerprintOperation(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;Z)V
    .locals 0
    .param p1, "isSelect"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->ToggleAllCheck(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->copyTwselectionChecklist()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->deleteFingerprintSequentially()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->finishSelectMode()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;ZI)V
    .locals 0
    .param p1, "val"    # Z
    .param p2, "position"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->setTwselectionChecklist(ZI)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->showSensorErrorDialog()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->updateTwChecklist(I)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->updateTwMultiSelected()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 108
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSalesCode:Ljava/lang/String;

    .line 112
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->ENABLE_SURVEY_MODE:Ljava/lang/String;

    .line 142
    const/4 v0, -0x1

    sput v0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectedId:I

    .line 88
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 94
    iput v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    .line 97
    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    .line 99
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettings_Utils;->getMaxFingerEnroll()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectionChecklist:[Z

    .line 100
    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectedChecklist:[Z

    .line 101
    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    .line 102
    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    .line 103
    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectedFingerprintTextView:Landroid/widget/TextView;

    .line 109
    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    .line 110
    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 111
    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    .line 115
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->isKeepEnrollSession:Z

    .line 117
    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->originalContentStart:I

    .line 145
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$1;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    .line 222
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$2;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mHandler:Landroid/os/Handler;

    .line 410
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$3;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$3;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->checkBoxRunnable:Ljava/lang/Runnable;

    .line 691
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$4;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$4;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->TwFingerprintultiSelectedListener:Landroid/widget/AdapterView$SemOnMultiSelectedListener;

    .line 88
    return-void
.end method

.method private ToggleAllCheck(Z)V
    .locals 2
    .param p1, "isSelect"    # Z

    .prologue
    .line 1685
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1686
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1685
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1689
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->updateSelectionState()V

    .line 1683
    return-void
.end method

.method private addFingerprintItemPreferences(Landroid/preference/PreferenceGroup;)V
    .locals 9
    .param p1, "root"    # Landroid/preference/PreferenceGroup;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 589
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 590
    iput-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    .line 592
    :cond_0
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mUserId:I

    invoke-virtual {v4, v5}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    .line 594
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    if-eqz v4, :cond_9

    .line 595
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    .line 598
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    if-ge v0, v4, :cond_2

    .line 599
    move v2, v0

    .line 600
    .local v2, "j":I
    :goto_1
    if-lez v2, :cond_1

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v5

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    if-le v5, v4, :cond_1

    .line 602
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    add-int/lit8 v6, v2, -0x1

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/Fingerprint;

    invoke-interface {v5, v6, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 603
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 604
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 598
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 608
    .end local v2    # "j":I
    :cond_2
    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 609
    const-string/jumbo v4, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v5, "addFingerprintItemPreferences : Sort Error"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iput-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    .line 611
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mUserId:I

    invoke-virtual {v4, v5}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    .line 612
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 613
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    .line 618
    :cond_3
    const-string/jumbo v4, "FpstFingerprintSettings_MultiSelect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addFingerprintItemPreferences : mEnrolledFingerCount["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    if-eqz v4, :cond_6

    .line 621
    const/4 v0, 0x0

    :goto_2
    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    if-ge v0, v4, :cond_4

    .line 622
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    .line 623
    .local v1, "item":Landroid/hardware/fingerprint/Fingerprint;
    const-string/jumbo v4, "FpstFingerprintSettings_MultiSelect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addFingerprintItemPreferences : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 626
    .end local v1    # "item":Landroid/hardware/fingerprint/Fingerprint;
    :cond_4
    const/4 v0, 0x0

    :goto_3
    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    if-ge v0, v4, :cond_7

    .line 627
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    .line 629
    .restart local v1    # "item":Landroid/hardware/fingerprint/Fingerprint;
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Finger "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 630
    .local v3, "pref":Landroid/preference/CheckBoxPreference;
    if-eqz v3, :cond_5

    .line 631
    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    invoke-static {v4}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->genKey(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 632
    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 635
    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 638
    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 639
    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->addCheckedList(Landroid/preference/CheckBoxPreference;)V

    .line 626
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 647
    .end local v1    # "item":Landroid/hardware/fingerprint/Fingerprint;
    .end local v3    # "pref":Landroid/preference/CheckBoxPreference;
    :cond_6
    iput v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    .line 648
    const-string/jumbo v4, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v5, "addFingerprintItemPreferences : mFingerprintManager.getEnrolledFingerprints() return null 2"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    .end local v0    # "i":I
    :cond_7
    :goto_4
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    .restart local v0    # "i":I
    :goto_5
    const/4 v4, 0x4

    if-ge v0, v4, :cond_a

    .line 656
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Finger "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 657
    .restart local v3    # "pref":Landroid/preference/CheckBoxPreference;
    if-eqz v3, :cond_8

    .line 658
    const-string/jumbo v4, "FpstFingerprintSettings_MultiSelect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateFingerList [Select] : Remove CheckBoxPreference, key = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRegisterCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 655
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 651
    .end local v0    # "i":I
    .end local v3    # "pref":Landroid/preference/CheckBoxPreference;
    :cond_9
    iput v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    .line 652
    const-string/jumbo v4, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v5, "addFingerprintItemPreferences : mFingerprintManager.getEnrolledFingerprints() return null 1"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 583
    .restart local v0    # "i":I
    :cond_a
    return-void
.end method

.method private appLockUsingFingerprint()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1087
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "applock_lock_type"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1089
    .local v0, "appLockType":I
    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    const/4 v2, 0x7

    if-gt v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private backToFingerlist()V
    .locals 3

    .prologue
    .line 239
    const-string/jumbo v0, "FpstFingerprintSettings_MultiSelect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "backToFingerlist stack count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 238
    return-void
.end method

.method private cancelAndSessionEnd()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 754
    const-string/jumbo v2, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v3, "cancelAndSessionEnd() "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 757
    .local v1, "mActivity":Landroid/app/Activity;
    if-nez v1, :cond_0

    .line 758
    const-string/jumbo v2, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v3, "cancelAndSessionEnd() : Null Activity"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    return-void

    .line 762
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v1

    .line 763
    check-cast v2, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v2, v5}, Lcom/android/settings/SettingsActivity;->setOnKeyBackPressedListener(Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;)V

    .line 765
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->isKeepEnrollSession:Z

    if-eqz v2, :cond_1

    .line 766
    const-string/jumbo v2, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v3, "cancelAndSessionEnd skip"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iput-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->isKeepEnrollSession:Z

    .line 781
    .end local v1    # "mActivity":Landroid/app/Activity;
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->finishFingerprintSettings()V

    .line 753
    return-void

    .line 769
    .restart local v1    # "mActivity":Landroid/app/Activity;
    :cond_1
    const-string/jumbo v2, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v3, "cancelAndSessionEnd cancel session with intent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 771
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "reason"

    const-string/jumbo v3, "cancelsession"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 772
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFragment()Landroid/app/Fragment;

    move-result-object v2

    const/16 v3, 0x3ef

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 773
    check-cast v1, Lcom/android/settings/SettingsActivity;

    .end local v1    # "mActivity":Landroid/app/Activity;
    invoke-virtual {v1, p0, v4, v0}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0

    .line 776
    .end local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "mActivity":Landroid/app/Activity;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 777
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "reason"

    const-string/jumbo v3, "cancelsession"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 778
    invoke-virtual {v1, v4, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method private checkDeleteAllFingerprint()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1037
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->checkFingerprintUsageNQuality(Landroid/content/Context;)Z

    move-result v2

    .line 1041
    .local v2, "isUsageQuality":Z
    if-nez v2, :cond_0

    .line 1042
    return v10

    .line 1045
    :cond_0
    const/4 v1, 0x0

    .line 1058
    .local v1, "dialogMessage":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b06b9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1057
    new-array v4, v10, [Ljava/lang/Object;

    .line 1060
    const-string/jumbo v5, "%s\n%s\n"

    .line 1059
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 1063
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1064
    const v8, 0x7f0b06a9

    .line 1063
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 1065
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1066
    const v8, 0x7f0b170a

    .line 1065
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    .line 1059
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    .line 1057
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1069
    .local v1, "dialogMessage":Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1070
    const v4, 0x7f0b06ac

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1069
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1072
    const v4, 0x104000a

    const/4 v5, 0x0

    .line 1069
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1073
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1075
    return v9
.end method

.method private checkDeleteSomeFingerprint()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1094
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->checkFingerprintIndexUsageInPersona(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mUserId:I

    if-nez v5, :cond_0

    move v2, v3

    .line 1095
    .local v2, "isKnoxLocked":Z
    :goto_0
    if-nez v2, :cond_1

    .line 1096
    return v3

    .end local v2    # "isKnoxLocked":Z
    :cond_0
    move v2, v4

    .line 1094
    goto :goto_0

    .line 1099
    .restart local v2    # "isKnoxLocked":Z
    :cond_1
    const v3, 0x7f0b06ab

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1101
    .local v1, "dialogMessage":Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1102
    const v5, 0x7f0b06ac

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1101
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1104
    const v5, 0x104000a

    const/4 v6, 0x0

    .line 1101
    invoke-virtual {v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1105
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1107
    return v4
.end method

.method private checkFingerprintIndexUsageInPersona(Landroid/content/Context;)Z
    .locals 9
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 1644
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v4

    .line 1645
    .local v4, "versionInfo":Landroid/os/Bundle;
    if-eqz v4, :cond_3

    .line 1646
    const-string/jumbo v5, "2.0"

    const-string/jumbo v6, "version"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1645
    if-eqz v5, :cond_3

    .line 1648
    const-string/jumbo v5, "persona"

    .line 1647
    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/SemPersonaManager;

    .line 1649
    .local v2, "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    if-eqz v2, :cond_2

    .line 1650
    invoke-virtual {v2, v8}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v3

    .line 1652
    .local v3, "personas":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    if-eqz v3, :cond_3

    .line 1653
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 1654
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/SemPersonaInfo;

    iget v1, v5, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    .line 1655
    .local v1, "personaId":I
    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/SemPersonaManager;->isEnabledFingerprintIndex(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1656
    invoke-direct {p0, p1, v1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->isSelectedWholeFingersUsedKnox(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1657
    const-string/jumbo v5, "FpstFingerprintSettings_MultiSelect"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "whole finger set using in KNOX was selected! PersonaId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    const/4 v5, 0x1

    return v5

    .line 1662
    :cond_0
    const-string/jumbo v5, "FpstFingerprintSettings_MultiSelect"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PersonaId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1663
    const-string/jumbo v7, " doesn\'t use fingerprint index."

    .line 1662
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1668
    .end local v0    # "k":I
    .end local v1    # "personaId":I
    .end local v3    # "personas":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    :cond_2
    const-string/jumbo v5, "FpstFingerprintSettings_MultiSelect"

    .line 1669
    const-string/jumbo v6, "checkFingerprintIndexUsageInPersona: Unable to access SemPersonaManager."

    .line 1668
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    .end local v2    # "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    :cond_3
    const-string/jumbo v5, "FpstFingerprintSettings_MultiSelect"

    .line 1673
    const-string/jumbo v6, "checkFingerprintIndexUsageInPersona: Any persona doesn\'t use fingerprint index."

    .line 1672
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    return v8
.end method

.method private checkFingerprintUsageNQuality(Landroid/content/Context;)Z
    .locals 6
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1409
    const-string/jumbo v1, "device_policy"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1416
    .local v0, "mDPM":Landroid/app/admin/DevicePolicyManager;
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mUserId:I

    invoke-virtual {v1, v4, v2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 1417
    return v3

    .line 1420
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, v5}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v1

    if-lez v1, :cond_1

    .line 1421
    const-string/jumbo v1, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v2, "checkFingerprintUsageNQuality : Unable to delete Fingerprint due to DPM"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    return v4

    .line 1439
    :cond_1
    return v3
.end method

.method private checkFinishDeleteOperation(Landroid/hardware/fingerprint/Fingerprint;)Z
    .locals 7
    .param p1, "fingerprint"    # Landroid/hardware/fingerprint/Fingerprint;

    .prologue
    const/4 v4, 0x0

    .line 170
    const/4 v2, 0x0

    .line 171
    .local v2, "remainingNum":I
    const/4 v0, -0x1

    .line 173
    .local v0, "deletedIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 174
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 175
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v3

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v5

    if-ne v3, v5, :cond_1

    .line 176
    move v0, v1

    .line 173
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 179
    const-string/jumbo v3, "FpstFingerprintSettings_MultiSelect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "checkFinishDeleteOperation remainingNum index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", remainingNum: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 184
    :cond_2
    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    .line 186
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 187
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 190
    :cond_3
    if-nez v2, :cond_4

    const/4 v3, 0x1

    :goto_2
    return v3

    :cond_4
    move v3, v4

    goto :goto_2
.end method

.method private clearselectionChecklist()V
    .locals 3

    .prologue
    .line 1769
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1770
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1769
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1772
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1768
    return-void
.end method

.method private copyTwselectionChecklist()V
    .locals 3

    .prologue
    .line 732
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    if-ge v0, v1, :cond_0

    .line 733
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectionChecklist:[Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    aput-boolean v1, v2, v0

    .line 732
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 731
    :cond_0
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 2

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 563
    .local v0, "root":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 564
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 566
    :cond_0
    const v1, 0x7f080077

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->addPreferencesFromResource(I)V

    .line 568
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->setFingerprintPreference()V

    .line 569
    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->addFingerprintItemPreferences(Landroid/preference/PreferenceGroup;)V

    .line 580
    return-object v0
.end method

.method private deleteAllFingerPrint()V
    .locals 12

    .prologue
    const v11, 0x7f0b06aa

    const v10, 0x7f0b042a

    const/high16 v9, 0x1040000

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1113
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getNumOfCheckedList()I

    move-result v2

    .line 1115
    .local v2, "selectedCount":I
    const-string/jumbo v4, "FpstFingerprintSettings_MultiSelect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deleteAllFingerPrint : selectedCount "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mUserId:I

    invoke-virtual {v4, v7, v5}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v4

    if-eq v4, v7, :cond_0

    .line 1118
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getFingerprintSupportingFeatures()Z

    move-result v4

    .line 1117
    if-eqz v4, :cond_7

    .line 1119
    :cond_0
    const/4 v3, 0x0

    .line 1120
    .local v3, "strMessage":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1122
    .local v0, "locktype":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mUserId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v1

    .line 1123
    .local v1, "passwordQuality":I
    const-string/jumbo v4, "FpstFingerprintSettings_MultiSelect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "passwordQuality : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    sparse-switch v1, :sswitch_data_0

    .line 1145
    .end local v0    # "locktype":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1146
    if-ne v2, v7, :cond_2

    .line 1147
    const v4, 0x7f0b06a5

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1164
    .local v3, "strMessage":Ljava/lang/String;
    :goto_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1167
    new-instance v5, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$13;

    invoke-direct {v5, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$13;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    .line 1164
    invoke-virtual {v4, v10, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1184
    const/4 v5, 0x0

    .line 1164
    invoke-virtual {v4, v9, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1185
    new-instance v5, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$14;

    invoke-direct {v5, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$14;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    .line 1164
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    .line 1192
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1193
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1195
    :cond_1
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 1112
    .end local v1    # "passwordQuality":I
    :goto_2
    return-void

    .line 1128
    .restart local v0    # "locktype":Ljava/lang/String;
    .restart local v1    # "passwordQuality":I
    .local v3, "strMessage":Ljava/lang/String;
    :sswitch_0
    const v4, 0x7f0b1196

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "locktype":Ljava/lang/String;
    goto :goto_0

    .line 1133
    .local v0, "locktype":Ljava/lang/String;
    :sswitch_1
    const v4, 0x7f0b1198

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "locktype":Ljava/lang/String;
    goto :goto_0

    .line 1136
    .local v0, "locktype":Ljava/lang/String;
    :sswitch_2
    const v4, 0x7f0b1194

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "locktype":Ljava/lang/String;
    goto :goto_0

    .line 1139
    .local v0, "locktype":Ljava/lang/String;
    :sswitch_3
    const v4, 0x7f0b0274

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "locktype":Ljava/lang/String;
    goto :goto_0

    .line 1149
    .end local v0    # "locktype":Ljava/lang/String;
    :cond_2
    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    const v5, 0x7f0b06a6

    invoke-virtual {p0, v5, v4}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "strMessage":Ljava/lang/String;
    goto :goto_1

    .line 1151
    .local v3, "strMessage":Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getFingerprintSupportingFeatures()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1152
    if-ne v2, v7, :cond_4

    .line 1153
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v8

    const v5, 0x7f0b06a1

    invoke-virtual {p0, v5, v4}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "strMessage":Ljava/lang/String;
    goto/16 :goto_1

    .line 1155
    .local v3, "strMessage":Ljava/lang/String;
    :cond_4
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object v0, v4, v7

    const v5, 0x7f0b06a2

    invoke-virtual {p0, v5, v4}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "strMessage":Ljava/lang/String;
    goto/16 :goto_1

    .line 1158
    .local v3, "strMessage":Ljava/lang/String;
    :cond_5
    if-ne v2, v7, :cond_6

    .line 1159
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v8

    const v5, 0x7f0b06a3

    invoke-virtual {p0, v5, v4}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "strMessage":Ljava/lang/String;
    goto/16 :goto_1

    .line 1161
    .local v3, "strMessage":Ljava/lang/String;
    :cond_6
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object v0, v4, v7

    const v5, 0x7f0b06a4

    invoke-virtual {p0, v5, v4}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "strMessage":Ljava/lang/String;
    goto/16 :goto_1

    .line 1196
    .end local v1    # "passwordQuality":I
    .end local v3    # "strMessage":Ljava/lang/String;
    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getFingerprintSupportingFeatures()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1198
    if-ne v2, v7, :cond_9

    .line 1199
    const v4, 0x7f0b0697

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1203
    .restart local v3    # "strMessage":Ljava/lang/String;
    :goto_3
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1206
    new-instance v5, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$15;

    invoke-direct {v5, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$15;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    .line 1203
    invoke-virtual {v4, v10, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1214
    const/4 v5, 0x0

    .line 1203
    invoke-virtual {v4, v9, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1215
    new-instance v5, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$16;

    invoke-direct {v5, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$16;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    .line 1203
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    .line 1222
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1223
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1225
    :cond_8
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2

    .line 1201
    .end local v3    # "strMessage":Ljava/lang/String;
    :cond_9
    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    const v5, 0x7f0b0698

    invoke-virtual {p0, v5, v4}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "strMessage":Ljava/lang/String;
    goto :goto_3

    .line 1228
    .end local v3    # "strMessage":Ljava/lang/String;
    :cond_a
    if-ne v2, v7, :cond_c

    .line 1229
    const v4, 0x7f0b0695

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1235
    .restart local v3    # "strMessage":Ljava/lang/String;
    :goto_4
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1238
    new-instance v5, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$17;

    invoke-direct {v5, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$17;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    .line 1235
    invoke-virtual {v4, v10, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1246
    const/4 v5, 0x0

    .line 1235
    invoke-virtual {v4, v9, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1247
    new-instance v5, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$18;

    invoke-direct {v5, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$18;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    .line 1235
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    .line 1254
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1255
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1257
    :cond_b
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2

    .line 1231
    .end local v3    # "strMessage":Ljava/lang/String;
    :cond_c
    new-array v4, v7, [Ljava/lang/Object;

    .line 1233
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 1232
    const v5, 0x7f0b0696

    .line 1231
    invoke-virtual {p0, v5, v4}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "strMessage":Ljava/lang/String;
    goto :goto_4

    .line 1125
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_3
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_0
        0x30000 -> :sswitch_0
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method

.method private deleteFingerprintOperation(Z)Z
    .locals 1
    .param p1, "isResetFeature"    # Z

    .prologue
    .line 1263
    const/4 v0, 0x1

    .line 1265
    .local v0, "result":Z
    if-eqz p1, :cond_0

    .line 1266
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->resetFingerprintSupportingFeatures()V

    .line 1274
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->deleteFingerprintSequentially()V

    .line 1292
    return v0
.end method

.method private deleteFingerprintSequentially()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 1339
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v2, v3, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getNumOfCheckedList()I

    move-result v2

    if-ge v2, v3, :cond_1

    .line 1340
    :cond_0
    return-void

    .line 1343
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1344
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1346
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    .line 1347
    .local v0, "fp":Landroid/hardware/fingerprint/Fingerprint;
    const-string/jumbo v2, "FpstFingerprintSettings_MultiSelect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "deleteFingerprintSequencially delete index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->removeFingerPrint(Landroid/hardware/fingerprint/Fingerprint;)V

    .line 1337
    .end local v0    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    :cond_2
    return-void

    .line 1343
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private finishSelectMode()V
    .locals 0

    .prologue
    .line 1764
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->clearselectionChecklist()V

    .line 1765
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->backToFingerlist()V

    .line 1763
    return-void
.end method

.method private static genKey(I)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "key_fingerprint_item_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFingerprintSupportingFeatures()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 1395
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1396
    const-string/jumbo v2, "fingerprint_secret_box"

    .line 1395
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 1397
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mUserId:I

    if-eqz v1, :cond_2

    .line 1398
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "fingerprint_webpass"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 1395
    :cond_1
    :goto_0
    return v0

    .line 1399
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1400
    const-string/jumbo v2, "fingerprint_samsungaccount_confirmed"

    .line 1399
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 1403
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1404
    const-string/jumbo v2, "personal_mode_lock_type"

    .line 1403
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1404
    const/4 v2, 0x5

    .line 1403
    if-eq v1, v2, :cond_1

    .line 1405
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->appLockUsingFingerprint()Z

    move-result v0

    goto :goto_0
.end method

.method private getNumOfCheckedList()I
    .locals 4

    .prologue
    .line 1693
    const/4 v2, 0x0

    .line 1695
    .local v2, "numChecked":I
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 1697
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 1698
    .local v0, "c":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1699
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1704
    .end local v0    # "c":Landroid/preference/CheckBoxPreference;
    .end local v1    # "c$iterator":Ljava/util/Iterator;
    :cond_1
    return v2
.end method

.method private isSelectedWholeFingersUsedKnox(Landroid/content/Context;I)Z
    .locals 11
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "personaId"    # I

    .prologue
    const/4 v10, 0x0

    .line 1592
    const-string/jumbo v7, "persona"

    .line 1591
    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/SemPersonaManager;

    .line 1593
    .local v5, "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    if-nez v5, :cond_0

    .line 1594
    const-string/jumbo v7, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v8, "isSelectedWholeFingersUsedKnox: Unable to access SemPersonaManager."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    return v10

    .line 1597
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getNumOfCheckedList()I

    move-result v6

    .line 1598
    .local v6, "selectedCount":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1600
    .local v2, "indexToBeRemoved":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    if-lez v6, :cond_1

    .line 1613
    :cond_1
    const/4 v4, 0x0

    .line 1614
    .local v4, "matchedCount":I
    invoke-virtual {v5, p2}, Lcom/samsung/android/knox/SemPersonaManager;->getFingerprintIndex(I)[I

    move-result-object v0

    .line 1615
    .local v0, "fingerIndex":[I
    if-nez v0, :cond_2

    .line 1616
    const-string/jumbo v7, "FpstFingerprintSettings_MultiSelect"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "fingerIndexList cannot be null for PersonaId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    return v10

    .line 1619
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, v0

    if-ge v1, v7, :cond_5

    .line 1620
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 1621
    aget v8, v0, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v8, v7, :cond_4

    .line 1622
    add-int/lit8 v4, v4, 0x1

    .line 1619
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1620
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1630
    .end local v3    # "j":I
    :cond_5
    array-length v7, v0

    if-ne v7, v4, :cond_6

    .line 1634
    const/4 v7, 0x1

    return v7

    .line 1639
    :cond_6
    return v10
.end method

.method private removeFingerPrint(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 3
    .param p1, "fingerPrint"    # Landroid/hardware/fingerprint/Fingerprint;

    .prologue
    .line 868
    const-string/jumbo v0, "FpstFingerprintSettings_MultiSelect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deleteFingerPrint : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mUserId:I

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->remove(Landroid/hardware/fingerprint/Fingerprint;ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    .line 867
    return-void
.end method

.method private resetFingerprintSupportingFeatures()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1356
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1357
    const-string/jumbo v2, "fingerprint_secret_box"

    .line 1356
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1358
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1359
    const-string/jumbo v2, "fingerprint_webpass"

    .line 1358
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1360
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1361
    const-string/jumbo v2, "fingerprint_fingerIndex"

    .line 1360
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1362
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1363
    const-string/jumbo v2, "fingerprint_used_samsungaccount"

    .line 1362
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1364
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1365
    const-string/jumbo v2, "fingerprint_samsungaccount_confirmed"

    .line 1364
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1366
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->setFingerprintScreenLockDisable()V

    .line 1368
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1369
    const-string/jumbo v2, "personal_mode_lock_type"

    .line 1368
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1369
    const/4 v2, 0x5

    .line 1368
    if-ne v1, v2, :cond_0

    .line 1370
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1371
    const-string/jumbo v2, "personal_mode_lock_type"

    .line 1370
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1373
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1374
    const-string/jumbo v2, "applock_lock_type"

    .line 1373
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1375
    .local v0, "appLockType":I
    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    const/4 v1, 0x7

    if-gt v0, v1, :cond_1

    .line 1376
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1377
    const-string/jumbo v2, "applock_lock_type"

    add-int/lit8 v3, v0, -0x4

    .line 1376
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1354
    :cond_1
    return-void
.end method

.method private setContentsStart(Z)V
    .locals 3
    .param p1, "isSet"    # Z

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020478

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    .line 512
    .local v0, "mToolbar":Landroid/widget/Toolbar;
    if-eqz v0, :cond_2

    .line 513
    if-eqz p1, :cond_1

    .line 514
    invoke-virtual {v0}, Landroid/widget/Toolbar;->getContentInsetStart()I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->originalContentStart:I

    .line 515
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2, v1}, Lcom/android/settings/fingerprint/FingerprintSettings_Utils;->convertDpToPixel(ILandroid/content/Context;)I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getContentInsetEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/Toolbar;->setContentInsetsRelative(II)V

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->originalContentStart:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 518
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->originalContentStart:I

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getContentInsetEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/Toolbar;->setContentInsetsRelative(II)V

    goto :goto_0

    .line 522
    :cond_2
    const-string/jumbo v1, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v2, "onCreateView mToolbar Null"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setFingerprintPreference()V
    .locals 1

    .prologue
    .line 1759
    const-string/jumbo v0, "register_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRegisterCategory:Landroid/preference/PreferenceCategory;

    .line 1758
    return-void
.end method

.method private setFingerprintScreenLockDisable()V
    .locals 4

    .prologue
    .line 1382
    const-string/jumbo v0, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v1, "setFingerprintScreenLockDisable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mUserId:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    .line 1381
    return-void
.end method

.method private setTwselectionChecklist(ZI)V
    .locals 4
    .param p1, "val"    # Z
    .param p2, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 737
    if-gez p2, :cond_0

    .line 738
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettings_Utils;->getMaxFingerEnroll()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 739
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectionChecklist:[Z

    aput-boolean p1, v1, v0

    .line 738
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 741
    .end local v0    # "i":I
    :cond_0
    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    if-ge p2, v2, :cond_3

    .line 742
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectionChecklist:[Z

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectionChecklist:[Z

    aget-boolean v3, v3, p2

    if-eqz v3, :cond_2

    :goto_1
    aput-boolean v1, v2, p2

    .line 736
    :cond_1
    :goto_2
    return-void

    .line 742
    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    .line 744
    :cond_3
    const-string/jumbo v1, "FpstFingerprintSettings_MultiSelect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTwselectionChecklist, postion error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private showSensorErrorDialog()V
    .locals 6

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 195
    .local v0, "activity":Landroid/app/Activity;
    const v2, 0x7f0b067c

    .line 197
    .local v2, "stringID":I
    const-string/jumbo v3, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    const v2, 0x7f0b067d

    .line 201
    :cond_0
    if-eqz v0, :cond_1

    .line 202
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 203
    const v4, 0x7f0b067a

    .line 202
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 206
    new-instance v4, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$5;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$5;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    .line 205
    const v5, 0x104000a

    .line 202
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 212
    new-instance v4, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$6;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$6;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    .line 202
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 217
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 193
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :goto_0
    return-void

    .line 219
    :cond_1
    const-string/jumbo v3, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v4, "Activity is null. Skip SensorErrorDialog"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updatePreferences()V
    .locals 0

    .prologue
    .line 750
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 749
    return-void
.end method

.method private updateTwChecklist(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 724
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    if-ge p1, v0, :cond_0

    .line 725
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->setTwselectionChecklist(ZI)V

    .line 722
    :goto_0
    return-void

    .line 727
    :cond_0
    const-string/jumbo v0, "FpstFingerprintSettings_MultiSelect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTwMultiSelected : postion error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateTwMultiSelected()V
    .locals 3

    .prologue
    .line 717
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    if-ge v0, v1, :cond_0

    .line 718
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectionChecklist:[Z

    aget-boolean v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 717
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 716
    :cond_0
    return-void
.end method


# virtual methods
.method public addCheckedList(Landroid/preference/CheckBoxPreference;)V
    .locals 1
    .param p1, "p"    # Landroid/preference/CheckBoxPreference;

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    return-void
.end method

.method public deleteFingerprint()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 966
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_1

    .line 967
    :cond_0
    return v7

    .line 966
    :cond_1
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    if-nez v3, :cond_0

    .line 969
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getNumOfCheckedList()I

    move-result v1

    .line 971
    .local v1, "selectedCount":I
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v1, v3, :cond_4

    .line 973
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mUserId:I

    invoke-virtual {v3, v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 974
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 975
    const v5, 0x10409b4

    .line 974
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 977
    return v6

    .line 980
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->checkDeleteAllFingerprint()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 981
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->deleteAllFingerPrint()V

    .line 1031
    :goto_0
    return v6

    .line 983
    :cond_3
    return v6

    .line 987
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->checkDeleteSomeFingerprint()Z

    move-result v3

    if-nez v3, :cond_5

    .line 988
    return v6

    .line 992
    :cond_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 993
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 994
    const v3, 0x7f0b06aa

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 997
    :cond_6
    if-ne v1, v6, :cond_7

    .line 998
    const v3, 0x7f0b0695

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1004
    .local v2, "tempStr":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1006
    new-instance v3, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$10;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$10;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    .line 1005
    const v4, 0x7f0b042a

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1015
    new-instance v3, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$11;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$11;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    .line 1014
    const/high16 v4, 0x1040000

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1022
    new-instance v3, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$12;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$12;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 1028
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 1029
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 1000
    .end local v2    # "tempStr":Ljava/lang/String;
    :cond_7
    new-array v3, v6, [Ljava/lang/Object;

    .line 1002
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    .line 1001
    const v4, 0x7f0b0696

    .line 1000
    invoke-virtual {p0, v4, v3}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tempStr":Ljava/lang/String;
    goto :goto_1
.end method

.method protected finishFingerprintSettings()V
    .locals 3

    .prologue
    .line 785
    const-string/jumbo v1, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v2, "finishFingerprintSettings()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 788
    .local v0, "mActivity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 789
    const-string/jumbo v1, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v2, "finishFingerprintSettings() : Null Activity"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    return-void

    .line 793
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 807
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->isRemoving()Z

    move-result v1

    if-nez v1, :cond_1

    .line 808
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 815
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    if-eqz v1, :cond_2

    .line 816
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->cancelRenameDialog()V

    .line 819
    :cond_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_3

    .line 820
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    .line 823
    :cond_3
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_4

    .line 824
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    .line 784
    :cond_4
    return-void

    .line 812
    :cond_5
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 856
    const v0, 0x7f0b18b3

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 279
    const/16 v0, 0x31

    return v0
.end method

.method public onBackKey()V
    .locals 2

    .prologue
    .line 1784
    const-string/jumbo v0, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v1, "=====onBackKey"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1786
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->isKeepEnrollSession:Z

    .line 1787
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->setOnKeyBackPressedListener(Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;)V

    .line 1788
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 1782
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 121
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 122
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 124
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0324

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 125
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 130
    .restart local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0325

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 131
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 284
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 285
    const-string/jumbo v3, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/4 v1, 0x0

    .line 289
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-nez v3, :cond_3

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 291
    .local v2, "i":Landroid/content/Intent;
    if-eqz v2, :cond_0

    const-string/jumbo v3, ":settings:show_fragment_args"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 292
    const-string/jumbo v3, ":settings:show_fragment_args"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 298
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "i":Landroid/content/Intent;
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 299
    const-string/jumbo v3, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mUserId:I

    .line 300
    const-string/jumbo v3, "selected_id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 301
    const-string/jumbo v3, "selected_id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectedId:I

    .line 302
    const-string/jumbo v3, "FpstFingerprintSettings_MultiSelect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreate selectedIndex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectedId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_1
    const-string/jumbo v3, "twmultiselected_id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 306
    const-string/jumbo v3, "twmultiselected_id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectedChecklist:[Z

    .line 307
    const-string/jumbo v3, "FpstFingerprintSettings_MultiSelect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreate twselectedChecklist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectedChecklist:[Z

    invoke-static {v5}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 312
    .local v0, "activity":Landroid/app/Activity;
    const-string/jumbo v3, "fingerprint"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 313
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 315
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    .line 316
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->setHasOptionsMenu(Z)V

    .line 317
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->actionBar:Landroid/app/ActionBar;

    .line 318
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->updatePreferences()V

    .line 283
    return-void

    .line 295
    .end local v0    # "activity":Landroid/app/Activity;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .local v1, "bundle":Landroid/os/Bundle;
    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 13
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 323
    const-string/jumbo v8, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v9, "onCreateOptionsMenu"

    invoke-static {v8, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 326
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    .line 327
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v8}, Landroid/view/Menu;->clear()V

    .line 329
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f040109

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 330
    .local v3, "mSelectActionView":Landroid/view/View;
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->actionBar:Landroid/app/ActionBar;

    if-eqz v8, :cond_5

    .line 331
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->actionBar:Landroid/app/ActionBar;

    const/16 v9, 0x10

    const/16 v10, 0x10

    invoke-virtual {v8, v9, v10}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 332
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->actionBar:Landroid/app/ActionBar;

    new-instance v9, Landroid/app/ActionBar$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/16 v12, 0x10

    invoke-direct {v9, v10, v11, v12}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v8, v3, v9}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 333
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 334
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->actionBar:Landroid/app/ActionBar;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 335
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->actionBar:Landroid/app/ActionBar;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 341
    :goto_0
    const v8, 0x7f110396

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 342
    .local v4, "mSelectAllText":Landroid/widget/TextView;
    new-instance v8, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$7;

    invoke-direct {v8, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$7;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    const v8, 0x7f110395

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    .line 351
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "current_sec_active_themepackage"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 352
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/AssetManager;->getOverlays()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 354
    .local v2, "installed_theme_count":I
    const-string/jumbo v8, "FpstFingerprintSettings_MultiSelect"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Theme : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", installed_theme_count : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    if-eqz v5, :cond_0

    if-lez v2, :cond_0

    .line 357
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d00ba

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 358
    .local v0, "allCheckboxColor":I
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 362
    .end local v0    # "allCheckboxColor":I
    :cond_0
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    new-instance v9, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$8;

    invoke-direct {v9, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$8;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    const v8, 0x7f110397

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectedFingerprintTextView:Landroid/widget/TextView;

    .line 370
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/widget/Toolbar;

    .line 371
    .local v7, "parentActionbar":Landroid/widget/Toolbar;
    if-eqz v7, :cond_1

    .line 372
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 373
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0328

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/Toolbar;->setContentInsetsAbsolute(II)V

    .line 378
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 379
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 380
    .local v6, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0324

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iget v10, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v11, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v6, v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 381
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v8, v6}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 387
    .end local v2    # "installed_theme_count":I
    .end local v4    # "mSelectAllText":Landroid/widget/TextView;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v7    # "parentActionbar":Landroid/widget/Toolbar;
    :cond_2
    :goto_2
    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x0

    const v11, 0x7f0b1079

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 388
    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    const v11, 0x7f0b042a

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 391
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectedChecklist:[Z

    if-eqz v8, :cond_6

    .line 392
    const-string/jumbo v8, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v9, "onCreateOptionsMenu : twselectedChecklist is not null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    if-ge v1, v8, :cond_6

    .line 395
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iget-object v9, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectedChecklist:[Z

    aget-boolean v9, v9, v1

    invoke-virtual {v8, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 394
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 337
    .end local v1    # "i":I
    :cond_3
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->actionBar:Landroid/app/ActionBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 338
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->actionBar:Landroid/app/ActionBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto/16 :goto_0

    .line 375
    .restart local v2    # "installed_theme_count":I
    .restart local v4    # "mSelectAllText":Landroid/widget/TextView;
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v7    # "parentActionbar":Landroid/widget/Toolbar;
    :cond_4
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/Toolbar;->setContentInsetsAbsolute(II)V

    goto/16 :goto_1

    .line 384
    .end local v2    # "installed_theme_count":I
    .end local v4    # "mSelectAllText":Landroid/widget/TextView;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v7    # "parentActionbar":Landroid/widget/Toolbar;
    :cond_5
    const-string/jumbo v8, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v9, "updateSelectMenu null!!"

    invoke-static {v8, v9}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 399
    :cond_6
    sget v8, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectedId:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_7

    .line 400
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    const/4 v9, 0x3

    invoke-interface {v8, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 401
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    const/4 v9, 0x3

    invoke-interface {v8, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 402
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    const/4 v9, 0x4

    invoke-interface {v8, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 403
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    const/4 v9, 0x4

    invoke-interface {v8, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 404
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->checkBoxRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0x64

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 322
    :goto_4
    return-void

    .line 406
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->updateSelectionState()V

    goto :goto_4
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 861
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    .line 862
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->setContentsStart(Z)V

    .line 863
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->checkBoxRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 864
    const-string/jumbo v0, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 434
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 442
    const/4 v0, 0x0

    return v0

    .line 436
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->renameFingerPrint()V

    .line 444
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 439
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->deleteFingerprint()Z

    goto :goto_0

    .line 434
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 830
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 831
    const-string/jumbo v1, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 834
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f11049f

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 835
    .local v0, "current":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary;

    if-eqz v1, :cond_0

    .line 836
    const-string/jumbo v1, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v2, "Top of fragment is searchResultsSummary"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    .end local v0    # "current":Landroid/app/Fragment;
    :goto_0
    return-void

    .line 838
    .restart local v0    # "current":Landroid/app/Fragment;
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->cancelAndSessionEnd()V

    goto :goto_0

    .line 841
    .end local v0    # "current":Landroid/app/Fragment;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->cancelAndSessionEnd()V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/preference/Preference;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 1778
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 849
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->updateSelectionState()V

    .line 850
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 674
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 675
    const-string/jumbo v1, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 682
    .local v0, "mlistView":Landroid/widget/ListView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->semSetDragBlockEnabled(Z)V

    .line 683
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->TwFingerprintultiSelectedListener:Landroid/widget/AdapterView$SemOnMultiSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->semSetOnMultiSelectedListener(Landroid/widget/AdapterView$SemOnMultiSelectedListener;)V

    .line 685
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 686
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1, p0}, Lcom/android/settings/SettingsActivity;->setOnKeyBackPressedListener(Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;)V

    .line 673
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 501
    const-string/jumbo v0, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v1, "onViewCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->setContentsStart(Z)V

    .line 505
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 506
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->setDivider()V

    .line 500
    return-void
.end method

.method public renameFingerPrint()V
    .locals 5

    .prologue
    .line 882
    const/4 v0, 0x0

    .line 884
    .local v0, "fp":Landroid/hardware/fingerprint/Fingerprint;
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    .line 885
    :cond_0
    return-void

    .line 884
    :cond_1
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    if-nez v2, :cond_0

    .line 887
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 888
    const/4 v1, 0x0

    .end local v0    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 889
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 898
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    .line 888
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 903
    .end local v1    # "i":I
    :cond_3
    if-nez v0, :cond_4

    .line 904
    return-void

    .line 907
    :cond_4
    new-instance v2, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v3

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;-><init>(ILjava/lang/CharSequence;)V

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    .line 908
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    new-instance v3, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$9;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$9;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->setConfirmationDialogFragmentListener(Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;)V

    .line 938
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string/jumbo v4, "dialog"

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 940
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->sendSurveyForRename()V

    .line 879
    return-void
.end method

.method protected sendSurveyForRename()V
    .locals 4

    .prologue
    .line 945
    const-string/jumbo v2, "TRUE"

    sget-object v3, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->ENABLE_SURVEY_MODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 946
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 947
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "app_id"

    const-string/jumbo v3, "com.samsung.android.fingerprint.service"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    const-string/jumbo v2, "feature"

    const-string/jumbo v3, "FPRN"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 954
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 955
    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 957
    const-string/jumbo v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 959
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 961
    const-string/jumbo v2, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v3, "renameFingerPrint sendSurveyLog - appId : com.samsung.android.fingerprint.service, Feature : FPRN, extra : null, value : null"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method public setDivider()V
    .locals 9

    .prologue
    const v4, 0x7f0a0330

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 527
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    .line 528
    .local v7, "l":Ljava/util/Locale;
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getListView()Landroid/widget/ListView;

    move-result-object v8

    .line 530
    .local v8, "listView":Landroid/widget/ListView;
    invoke-static {v7}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v6, :cond_1

    .line 533
    .local v6, "isRtl":Z
    :goto_0
    if-nez v6, :cond_2

    .line 534
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 538
    .local v0, "insetdividerSelect":Landroid/graphics/drawable/InsetDrawable;
    :goto_1
    if-eqz v8, :cond_0

    .line 539
    invoke-virtual {v8, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 526
    :cond_0
    return-void

    .end local v0    # "insetdividerSelect":Landroid/graphics/drawable/InsetDrawable;
    .end local v6    # "isRtl":Z
    :cond_1
    move v6, v3

    .line 530
    goto :goto_0

    .line 536
    .restart local v6    # "isRtl":Z
    :cond_2
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    move v2, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .restart local v0    # "insetdividerSelect":Landroid/graphics/drawable/InsetDrawable;
    goto :goto_1
.end method

.method public updateActionbarState()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 449
    const/4 v0, 0x0

    .line 451
    .local v0, "numChecked":I
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getNumOfCheckedList()I

    move-result v0

    .line 453
    const-string/jumbo v1, "FpstFingerprintSettings_MultiSelect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateActionbarState checked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    if-lez v0, :cond_1

    .line 456
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectedFingerprintTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b06fc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 467
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 472
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 447
    :goto_2
    return-void

    .line 459
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectedFingerprintTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0b032b

    invoke-virtual {v2, v4, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 463
    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectedFingerprintTextView:Landroid/widget/TextView;

    const v2, 0x7f0b06e4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 469
    :cond_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 474
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 475
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 476
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 477
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 480
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 481
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 482
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 483
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 488
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 489
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 490
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 491
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 472
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public updateSelectionState()V
    .locals 0

    .prologue
    .line 1680
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->updateActionbarState()V

    .line 1679
    return-void
.end method
