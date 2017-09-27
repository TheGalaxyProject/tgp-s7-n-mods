.class Lcom/samsung/android/widget/SemDatePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SemDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemDatePicker$SavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/widget/SemDatePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mListPosition:I

.field private final mMaxDate:J

.field private final mMinDate:J

.field private final mSelectedDay:I

.field private final mSelectedMonth:I

.field private final mSelectedYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1555
    new-instance v0, Lcom/samsung/android/widget/SemDatePicker$SavedState$1;

    invoke-direct {v0}, Lcom/samsung/android/widget/SemDatePicker$SavedState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1482
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1509
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1510
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mSelectedYear:I

    .line 1511
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mSelectedMonth:I

    .line 1512
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mSelectedDay:I

    .line 1513
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mMinDate:J

    .line 1514
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mMaxDate:J

    .line 1515
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mListPosition:I

    .line 1508
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/widget/SemDatePicker$SavedState;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemDatePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;IIIJJI)V
    .locals 1
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "minDate"    # J
    .param p7, "maxDate"    # J
    .param p9, "listPosition"    # I

    .prologue
    .line 1496
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1497
    iput p2, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mSelectedYear:I

    .line 1498
    iput p3, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mSelectedMonth:I

    .line 1499
    iput p4, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mSelectedDay:I

    .line 1500
    iput-wide p5, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mMinDate:J

    .line 1501
    iput-wide p7, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mMaxDate:J

    .line 1502
    iput p9, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mListPosition:I

    .line 1495
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIIJJILcom/samsung/android/widget/SemDatePicker$SavedState;)V
    .locals 1
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "minDate"    # J
    .param p7, "maxDate"    # J
    .param p9, "listPosition"    # I

    .prologue
    invoke-direct/range {p0 .. p9}, Lcom/samsung/android/widget/SemDatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIIJJI)V

    return-void
.end method


# virtual methods
.method public getListPosition()I
    .locals 1

    .prologue
    .line 1550
    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mListPosition:I

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    .prologue
    .line 1546
    iget-wide v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mMaxDate:J

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .prologue
    .line 1542
    iget-wide v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mMinDate:J

    return-wide v0
.end method

.method public getSelectedDay()I
    .locals 1

    .prologue
    .line 1530
    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mSelectedDay:I

    return v0
.end method

.method public getSelectedMonth()I
    .locals 1

    .prologue
    .line 1534
    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mSelectedMonth:I

    return v0
.end method

.method public getSelectedYear()I
    .locals 1

    .prologue
    .line 1538
    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mSelectedYear:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1520
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1521
    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mSelectedYear:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1522
    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mSelectedMonth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1523
    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mSelectedDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1524
    iget-wide v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mMinDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1525
    iget-wide v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mMaxDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1526
    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker$SavedState;->mListPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1519
    return-void
.end method
