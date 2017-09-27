.class Lcom/samsung/android/settings/location/SatelliteView$1;
.super Ljava/lang/Object;
.source "SatelliteView.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/location/SatelliteView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/location/SatelliteView;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/location/SatelliteView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/location/SatelliteView;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/samsung/android/settings/location/SatelliteView$1;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 8
    .param p1, "event"    # I

    .prologue
    const/4 v5, 0x0

    .line 354
    const/4 v4, 0x3

    if-ne v4, p1, :cond_2

    .line 356
    iget-object v4, p0, Lcom/samsung/android/settings/location/SatelliteView$1;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    iget-object v4, v4, Lcom/samsung/android/settings/location/SatelliteView;->mLocationManager:Landroid/location/LocationManager;

    if-nez v4, :cond_0

    .line 357
    const-string/jumbo v4, "GPS_SATELLITE_VIEW"

    const-string/jumbo v5, "onGpsStatusChanged GpsStatus.GPS_EVENT_FIRST_FIX catch error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return-void

    .line 360
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/location/SatelliteView$1;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    iget-object v4, v4, Lcom/samsung/android/settings/location/SatelliteView;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v4, v5}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    .line 361
    .local v0, "gs":Landroid/location/GpsStatus;
    iget-object v4, p0, Lcom/samsung/android/settings/location/SatelliteView$1;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getTimeToFirstFix()I

    move-result v5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/location/SatelliteView;->-set7(Lcom/samsung/android/settings/location/SatelliteView;I)I

    .line 352
    .end local v0    # "gs":Landroid/location/GpsStatus;
    :cond_1
    :goto_0
    return-void

    .line 363
    :cond_2
    const/4 v4, 0x4

    if-ne v4, p1, :cond_1

    .line 368
    iget-object v4, p0, Lcom/samsung/android/settings/location/SatelliteView$1;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    iget-object v4, v4, Lcom/samsung/android/settings/location/SatelliteView;->mLocationManager:Landroid/location/LocationManager;

    if-nez v4, :cond_3

    .line 370
    const-string/jumbo v4, "GPS_SATELLITE_VIEW"

    const-string/jumbo v5, "onGpsStatusChanged GpsStatus.GPS_EVENT_SATELLITE_STATUS catch error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return-void

    .line 373
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/location/SatelliteView$1;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    iget-object v4, v4, Lcom/samsung/android/settings/location/SatelliteView;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v4, v5}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    .line 374
    .restart local v0    # "gs":Landroid/location/GpsStatus;
    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 376
    .local v1, "list":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/location/GpsSatellite;>;"
    iget-object v4, p0, Lcom/samsung/android/settings/location/SatelliteView$1;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    const/4 v5, 0x0

    iput v5, v4, Lcom/samsung/android/settings/location/SatelliteView;->sv_list_mask:I

    .line 378
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 380
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/GpsSatellite;

    .line 381
    .local v3, "sat":Landroid/location/GpsSatellite;
    invoke-virtual {v3}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v2

    .line 382
    .local v2, "prn":I
    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get3()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 384
    const-string/jumbo v4, "GPS_SATELLITE_VIEW"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "PRN NUM = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_5
    const/16 v4, 0x20

    if-gt v2, v4, :cond_4

    .line 389
    iget-object v4, p0, Lcom/samsung/android/settings/location/SatelliteView$1;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    iget-object v4, v4, Lcom/samsung/android/settings/location/SatelliteView;->sv_list:[Landroid/location/GpsSatellite;

    add-int/lit8 v5, v2, -0x1

    aput-object v3, v4, v5

    .line 390
    iget-object v4, p0, Lcom/samsung/android/settings/location/SatelliteView$1;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    iget v5, v4, Lcom/samsung/android/settings/location/SatelliteView;->sv_list_mask:I

    add-int/lit8 v6, v2, -0x1

    const/4 v7, 0x1

    shl-int v6, v7, v6

    or-int/2addr v5, v6

    iput v5, v4, Lcom/samsung/android/settings/location/SatelliteView;->sv_list_mask:I

    goto :goto_1

    .line 392
    .end local v2    # "prn":I
    .end local v3    # "sat":Landroid/location/GpsSatellite;
    :cond_6
    iget-object v4, p0, Lcom/samsung/android/settings/location/SatelliteView$1;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-virtual {v4}, Lcom/samsung/android/settings/location/SatelliteView;->showSVStatus()V

    goto :goto_0
.end method
