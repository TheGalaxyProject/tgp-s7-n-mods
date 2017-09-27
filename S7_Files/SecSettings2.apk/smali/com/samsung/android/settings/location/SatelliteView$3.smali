.class Lcom/samsung/android/settings/location/SatelliteView$3;
.super Ljava/lang/Object;
.source "SatelliteView.java"

# interfaces
.implements Landroid/location/LocationListener;


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
    .line 405
    iput-object p1, p0, Lcom/samsung/android/settings/location/SatelliteView$3;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 18
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 409
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    .line 410
    .local v8, "latitude":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    .line 411
    .local v10, "longitude":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    .line 412
    .local v4, "altitude":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearing()F

    move-result v3

    .line 413
    .local v3, "bearing":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v7

    .line 414
    .local v7, "speed":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    .line 415
    .local v2, "accuracy":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v12

    .line 417
    .local v12, "time":J
    invoke-static {v10, v11}, Lcom/samsung/android/settings/location/SatelliteView;->-set4(D)D

    .line 418
    invoke-static {v8, v9}, Lcom/samsung/android/settings/location/SatelliteView;->-set3(D)D

    .line 419
    invoke-static {v4, v5}, Lcom/samsung/android/settings/location/SatelliteView;->-set1(D)D

    .line 420
    invoke-static {v3}, Lcom/samsung/android/settings/location/SatelliteView;->-set2(F)F

    .line 422
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/location/SatelliteView$3;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    const/high16 v15, 0x45610000    # 3600.0f

    mul-float/2addr v15, v7

    const/high16 v16, 0x447a0000    # 1000.0f

    div-float v15, v15, v16

    float-to-double v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v14, v0, v1}, Lcom/samsung/android/settings/location/SatelliteView;->-set5(Lcom/samsung/android/settings/location/SatelliteView;D)D

    .line 423
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/location/SatelliteView$3;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-static {v14, v2}, Lcom/samsung/android/settings/location/SatelliteView;->-set0(Lcom/samsung/android/settings/location/SatelliteView;F)F

    .line 424
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/location/SatelliteView$3;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-static {v14, v12, v13}, Lcom/samsung/android/settings/location/SatelliteView;->-set6(Lcom/samsung/android/settings/location/SatelliteView;J)J

    .line 426
    new-instance v6, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/location/SatelliteView$3;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-static {v14}, Lcom/samsung/android/settings/location/SatelliteView;->-get19(Lcom/samsung/android/settings/location/SatelliteView;)J

    move-result-wide v14

    invoke-direct {v6, v14, v15}, Ljava/util/Date;-><init>(J)V

    .line 427
    .local v6, "date":Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/location/SatelliteView$3;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/samsung/android/settings/location/SatelliteView;->calendarDate:Ljava/lang/String;

    .line 429
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/location/SatelliteView$3;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-virtual {v14}, Lcom/samsung/android/settings/location/SatelliteView;->showSVStatus()V

    .line 407
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 435
    iget-object v0, p0, Lcom/samsung/android/settings/location/SatelliteView$3;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/location/SatelliteView;->showSVStatus()V

    .line 433
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 441
    iget-object v0, p0, Lcom/samsung/android/settings/location/SatelliteView$3;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/location/SatelliteView;->showSVStatus()V

    .line 439
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/os/Bundle;

    .prologue
    .line 447
    iget-object v0, p0, Lcom/samsung/android/settings/location/SatelliteView$3;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/location/SatelliteView;->showSVStatus()V

    .line 445
    return-void
.end method
