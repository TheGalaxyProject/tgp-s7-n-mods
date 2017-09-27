.class Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;
.super Ljava/lang/Object;
.source "DataUsageReminderActivity.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/datausage/DataUsageReminderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final key:I

.field public m_total:J

.field public uids:Landroid/util/SparseBooleanArray;

.field public w_total:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 404
    new-instance v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 358
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->uids:Landroid/util/SparseBooleanArray;

    .line 368
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->key:I

    .line 367
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->uids:Landroid/util/SparseBooleanArray;

    .line 372
    iput p1, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->key:I

    .line 371
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->uids:Landroid/util/SparseBooleanArray;

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->key:I

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->uids:Landroid/util/SparseBooleanArray;

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->m_total:J

    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->w_total:J

    .line 375
    return-void
.end method


# virtual methods
.method public addUid(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 383
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->uids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 382
    return-void
.end method

.method public compareTo(Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;)I
    .locals 6
    .param p1, "another"    # Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;

    .prologue
    .line 401
    iget-wide v0, p1, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->m_total:J

    iget-wide v2, p1, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->w_total:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->w_total:J

    iget-wide v4, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->m_total:J

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "another"    # Ljava/lang/Object;

    .prologue
    .line 400
    check-cast p1, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;

    .end local p1    # "another":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->compareTo(Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 388
    iget v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->key:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 389
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V

    .line 390
    iget-wide v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->m_total:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 391
    iget-wide v0, p0, Lcom/samsung/android/settings/datausage/DataUsageReminderActivity$AppItem;->w_total:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 387
    return-void
.end method
