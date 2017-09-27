.class public Lcom/android/settings/MasterClear;
.super Lcom/android/settings/OptionsMenuFragment;
.source "MasterClear.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MasterClear$1;,
        Lcom/android/settings/MasterClear$2;
    }
.end annotation


# static fields
.field private static final mAppLabelComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private static rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;


# instance fields
.field private mCanEraseExternalOnFuseSystem:Z

.field private mContentView:Landroid/view/View;

.field private mExternalStorage:Landroid/widget/CheckBox;

.field private mExternalStorageContainer:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private final mInitiateListener:Landroid/view/View$OnClickListener;

.field private mPinConfirmed:Z

.field private mStrSdVolumeId:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/settings/MasterClear;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/MasterClear;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/MasterClear;->mPinConfirmed:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/MasterClear;I)Z
    .locals 1
    .param p1, "request"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/MasterClear;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/MasterClear;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/MasterClear;->showFinalConfirmation()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 624
    new-instance v0, Lcom/android/settings/MasterClear$2;

    invoke-direct {v0}, Lcom/android/settings/MasterClear$2;-><init>()V

    sput-object v0, Lcom/android/settings/MasterClear;->mAppLabelComparator:Ljava/util/Comparator;

    .line 97
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/settings/OptionsMenuFragment;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/MasterClear;->mCanEraseExternalOnFuseSystem:Z

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mStrSdVolumeId:Ljava/lang/String;

    .line 201
    new-instance v0, Lcom/android/settings/MasterClear$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClear$1;-><init>(Lcom/android/settings/MasterClear;)V

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    .line 97
    return-void
.end method

.method private addDescriptionForRemovingPreloadApp()V
    .locals 35

    .prologue
    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f110488

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 519
    .local v11, "description":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f110489

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 520
    .local v6, "apps":Landroid/widget/LinearLayout;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 522
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v10

    .line 524
    .local v10, "context":Landroid/content/Context;
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 525
    .local v29, "pkg_names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v21, 0x0

    .line 526
    .local v21, "instream":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 528
    .local v7, "buffreader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v22, Ljava/io/FileInputStream;

    new-instance v32, Ljava/io/File;

    const-string/jumbo v33, "/system/etc/removable_preload.txt"

    invoke-direct/range {v32 .. v33}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    .end local v21    # "instream":Ljava/io/InputStream;
    .local v22, "instream":Ljava/io/InputStream;
    :try_start_1
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v32, Ljava/io/InputStreamReader;

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v32

    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 532
    .end local v7    # "buffreader":Ljava/io/BufferedReader;
    .local v8, "buffreader":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v24

    .local v24, "line":Ljava/lang/String;
    if-eqz v24, :cond_4

    .line 533
    const-string/jumbo v32, "name="

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_1

    .line 534
    const-string/jumbo v32, "name=\'"

    const-string/jumbo v33, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v32

    const-string/jumbo v33, "\'"

    const-string/jumbo v34, ""

    invoke-virtual/range {v32 .. v34}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 537
    .end local v24    # "line":Ljava/lang/String;
    :catch_0
    move-exception v14

    .local v14, "e1":Ljava/io/FileNotFoundException;
    move-object v7, v8

    .end local v8    # "buffreader":Ljava/io/BufferedReader;
    .local v7, "buffreader":Ljava/io/BufferedReader;
    move-object/from16 v21, v22

    .line 538
    .end local v7    # "buffreader":Ljava/io/BufferedReader;
    .end local v22    # "instream":Ljava/io/InputStream;
    :goto_1
    :try_start_3
    invoke-virtual {v14}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 543
    if-eqz v7, :cond_2

    :try_start_4
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 548
    :cond_2
    :goto_2
    if-eqz v21, :cond_3

    :try_start_5
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 554
    .end local v14    # "e1":Ljava/io/FileNotFoundException;
    :cond_3
    :goto_3
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 555
    .local v5, "N":I
    if-nez v5, :cond_a

    .line 556
    return-void

    .line 543
    .end local v5    # "N":I
    .restart local v8    # "buffreader":Ljava/io/BufferedReader;
    .restart local v22    # "instream":Ljava/io/InputStream;
    .restart local v24    # "line":Ljava/lang/String;
    :cond_4
    if-eqz v8, :cond_5

    :try_start_6
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 548
    :cond_5
    :goto_4
    if-eqz v22, :cond_6

    :try_start_7
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_6
    :goto_5
    move-object v7, v8

    .end local v8    # "buffreader":Ljava/io/BufferedReader;
    .restart local v7    # "buffreader":Ljava/io/BufferedReader;
    move-object/from16 v21, v22

    .end local v22    # "instream":Ljava/io/InputStream;
    .local v21, "instream":Ljava/io/InputStream;
    goto :goto_3

    .line 544
    .end local v7    # "buffreader":Ljava/io/BufferedReader;
    .end local v21    # "instream":Ljava/io/InputStream;
    .restart local v8    # "buffreader":Ljava/io/BufferedReader;
    .restart local v22    # "instream":Ljava/io/InputStream;
    :catch_1
    move-exception v16

    .line 545
    .local v16, "e_reader":Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 549
    .end local v16    # "e_reader":Ljava/io/IOException;
    :catch_2
    move-exception v15

    .line 550
    .local v15, "e_input":Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 539
    .end local v8    # "buffreader":Ljava/io/BufferedReader;
    .end local v15    # "e_input":Ljava/io/IOException;
    .end local v22    # "instream":Ljava/io/InputStream;
    .end local v24    # "line":Ljava/lang/String;
    .local v7, "buffreader":Ljava/io/BufferedReader;
    .local v21, "instream":Ljava/io/InputStream;
    :catch_3
    move-exception v13

    .line 540
    .end local v7    # "buffreader":Ljava/io/BufferedReader;
    .end local v21    # "instream":Ljava/io/InputStream;
    .local v13, "e":Ljava/io/IOException;
    :goto_6
    :try_start_8
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 543
    if-eqz v7, :cond_7

    :try_start_9
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 548
    :cond_7
    :goto_7
    if-eqz v21, :cond_3

    :try_start_a
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_3

    .line 549
    :catch_4
    move-exception v15

    .line 550
    .restart local v15    # "e_input":Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 544
    .end local v15    # "e_input":Ljava/io/IOException;
    :catch_5
    move-exception v16

    .line 545
    .restart local v16    # "e_reader":Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 544
    .end local v13    # "e":Ljava/io/IOException;
    .end local v16    # "e_reader":Ljava/io/IOException;
    .restart local v14    # "e1":Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v16

    .line 545
    .restart local v16    # "e_reader":Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 549
    .end local v16    # "e_reader":Ljava/io/IOException;
    :catch_7
    move-exception v15

    .line 550
    .restart local v15    # "e_input":Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 541
    .end local v14    # "e1":Ljava/io/FileNotFoundException;
    .end local v15    # "e_input":Ljava/io/IOException;
    :catchall_0
    move-exception v32

    .line 543
    :goto_8
    if-eqz v7, :cond_8

    :try_start_b
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 548
    :cond_8
    :goto_9
    if-eqz v21, :cond_9

    :try_start_c
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 541
    :cond_9
    :goto_a
    throw v32

    .line 544
    :catch_8
    move-exception v16

    .line 545
    .restart local v16    # "e_reader":Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 549
    .end local v16    # "e_reader":Ljava/io/IOException;
    :catch_9
    move-exception v15

    .line 550
    .restart local v15    # "e_input":Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 560
    .end local v15    # "e_input":Ljava/io/IOException;
    .restart local v5    # "N":I
    :cond_a
    const-string/jumbo v32, "layout_inflater"

    .line 559
    move-object/from16 v0, v32

    invoke-virtual {v10, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/LayoutInflater;

    .line 563
    .local v20, "inflater":Landroid/view/LayoutInflater;
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 564
    .local v31, "sec_apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/TextView;>;"
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 565
    .local v27, "other_apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/TextView;>;"
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_b
    move/from16 v0, v18

    if-ge v0, v5, :cond_10

    .line 566
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v30

    .line 568
    .local v30, "pm":Landroid/content/pm/PackageManager;
    :try_start_d
    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    const/16 v33, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_d} :catch_a

    move-result-object v28

    .line 573
    .local v28, "pkg_info":Landroid/content/pm/PackageInfo;
    const/16 v19, 0x0

    .line 574
    .local v19, "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    const/16 v34, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 577
    .local v19, "icon":Landroid/graphics/drawable/Drawable;
    const v32, 0x7f04017c

    .line 578
    const/16 v33, 0x0

    .line 577
    move-object/from16 v0, v20

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 579
    .local v9, "child":Landroid/widget/TextView;
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    if-eqz v19, :cond_b

    .line 581
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f0a001a

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 582
    .local v17, "height":I
    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v17

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 583
    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 586
    .end local v17    # "height":I
    :cond_b
    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    const-string/jumbo v33, "\\."

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    .line 587
    .local v26, "names":[Ljava/lang/String;
    const/16 v23, 0x0

    .line 588
    .local v23, "is_sec_apps":Z
    const/16 v32, 0x0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v33, v0

    :goto_c
    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_d

    aget-object v25, v26, v32

    .line 589
    .local v25, "name":Ljava/lang/String;
    const-string/jumbo v34, "sec"

    move-object/from16 v0, v34

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_c

    const-string/jumbo v34, "samsung"

    move-object/from16 v0, v34

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_e

    .line 590
    :cond_c
    const/16 v23, 0x1

    .line 594
    .end local v25    # "name":Ljava/lang/String;
    :cond_d
    if-eqz v23, :cond_f

    .line 595
    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    .end local v9    # "child":Landroid/widget/TextView;
    .end local v19    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v23    # "is_sec_apps":Z
    .end local v26    # "names":[Ljava/lang/String;
    .end local v28    # "pkg_info":Landroid/content/pm/PackageInfo;
    :goto_d
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_b

    .line 588
    .restart local v9    # "child":Landroid/widget/TextView;
    .restart local v19    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v23    # "is_sec_apps":Z
    .restart local v25    # "name":Ljava/lang/String;
    .restart local v26    # "names":[Ljava/lang/String;
    .restart local v28    # "pkg_info":Landroid/content/pm/PackageInfo;
    :cond_e
    add-int/lit8 v32, v32, 0x1

    goto :goto_c

    .line 597
    .end local v25    # "name":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 601
    .end local v9    # "child":Landroid/widget/TextView;
    .end local v19    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v23    # "is_sec_apps":Z
    .end local v26    # "names":[Ljava/lang/String;
    .end local v28    # "pkg_info":Landroid/content/pm/PackageInfo;
    .end local v30    # "pm":Landroid/content/pm/PackageManager;
    :cond_10
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v32

    if-nez v32, :cond_11

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v32

    if-nez v32, :cond_11

    .line 602
    return-void

    .line 605
    :cond_11
    sget-object v32, Lcom/android/settings/MasterClear;->mAppLabelComparator:Ljava/util/Comparator;

    invoke-static/range {v31 .. v32}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 606
    sget-object v32, Lcom/android/settings/MasterClear;->mAppLabelComparator:Ljava/util/Comparator;

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 607
    if-eqz v6, :cond_13

    .line 608
    const/16 v18, 0x0

    :goto_e
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v32

    move/from16 v0, v18

    move/from16 v1, v32

    if-ge v0, v1, :cond_12

    .line 609
    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/view/View;

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 608
    add-int/lit8 v18, v18, 0x1

    goto :goto_e

    .line 611
    :cond_12
    const/16 v18, 0x0

    :goto_f
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v32

    move/from16 v0, v18

    move/from16 v1, v32

    if-ge v0, v1, :cond_13

    .line 612
    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/view/View;

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 611
    add-int/lit8 v18, v18, 0x1

    goto :goto_f

    .line 615
    :cond_13
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->clear()V

    .line 616
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->clear()V

    .line 618
    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 619
    if-eqz v6, :cond_14

    .line 620
    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 517
    :cond_14
    return-void

    .line 569
    .restart local v30    # "pm":Landroid/content/pm/PackageManager;
    :catch_a
    move-exception v12

    .local v12, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_d

    .line 541
    .end local v5    # "N":I
    .end local v12    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v18    # "i":I
    .end local v20    # "inflater":Landroid/view/LayoutInflater;
    .end local v27    # "other_apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/TextView;>;"
    .end local v30    # "pm":Landroid/content/pm/PackageManager;
    .end local v31    # "sec_apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/TextView;>;"
    .restart local v7    # "buffreader":Ljava/io/BufferedReader;
    .restart local v22    # "instream":Ljava/io/InputStream;
    :catchall_1
    move-exception v32

    move-object/from16 v21, v22

    .end local v22    # "instream":Ljava/io/InputStream;
    .local v21, "instream":Ljava/io/InputStream;
    goto/16 :goto_8

    .end local v7    # "buffreader":Ljava/io/BufferedReader;
    .end local v21    # "instream":Ljava/io/InputStream;
    .restart local v8    # "buffreader":Ljava/io/BufferedReader;
    .restart local v22    # "instream":Ljava/io/InputStream;
    :catchall_2
    move-exception v32

    move-object v7, v8

    .end local v8    # "buffreader":Ljava/io/BufferedReader;
    .local v7, "buffreader":Ljava/io/BufferedReader;
    move-object/from16 v21, v22

    .end local v22    # "instream":Ljava/io/InputStream;
    .restart local v21    # "instream":Ljava/io/InputStream;
    goto/16 :goto_8

    .line 537
    .local v7, "buffreader":Ljava/io/BufferedReader;
    .local v21, "instream":Ljava/io/InputStream;
    :catch_b
    move-exception v14

    .restart local v14    # "e1":Ljava/io/FileNotFoundException;
    goto/16 :goto_1

    .end local v14    # "e1":Ljava/io/FileNotFoundException;
    .end local v21    # "instream":Ljava/io/InputStream;
    .restart local v22    # "instream":Ljava/io/InputStream;
    :catch_c
    move-exception v14

    .restart local v14    # "e1":Ljava/io/FileNotFoundException;
    move-object/from16 v21, v22

    .end local v22    # "instream":Ljava/io/InputStream;
    .local v21, "instream":Ljava/io/InputStream;
    goto/16 :goto_1

    .line 539
    .end local v14    # "e1":Ljava/io/FileNotFoundException;
    .end local v21    # "instream":Ljava/io/InputStream;
    .restart local v22    # "instream":Ljava/io/InputStream;
    :catch_d
    move-exception v13

    .restart local v13    # "e":Ljava/io/IOException;
    move-object/from16 v21, v22

    .end local v22    # "instream":Ljava/io/InputStream;
    .restart local v21    # "instream":Ljava/io/InputStream;
    goto/16 :goto_6

    .end local v7    # "buffreader":Ljava/io/BufferedReader;
    .end local v13    # "e":Ljava/io/IOException;
    .end local v21    # "instream":Ljava/io/InputStream;
    .restart local v8    # "buffreader":Ljava/io/BufferedReader;
    .restart local v22    # "instream":Ljava/io/InputStream;
    :catch_e
    move-exception v13

    .restart local v13    # "e":Ljava/io/IOException;
    move-object v7, v8

    .end local v8    # "buffreader":Ljava/io/BufferedReader;
    .local v7, "buffreader":Ljava/io/BufferedReader;
    move-object/from16 v21, v22

    .end local v22    # "instream":Ljava/io/InputStream;
    .restart local v21    # "instream":Ljava/io/InputStream;
    goto/16 :goto_6
.end method

.method private checkReactivationLock()Z
    .locals 5

    .prologue
    .line 660
    const/4 v1, 0x0

    .line 661
    .local v1, "ret":Z
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 662
    sget-object v2, Lcom/android/settings/MasterClear;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {v2}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getStatus()I

    move-result v0

    .line 663
    .local v0, "lmmFlag":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 664
    const/4 v1, 0x1

    .line 669
    const-string/jumbo v2, "MasterClear"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "LMM[getReqiredAuthFlag] in Check= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    .end local v0    # "lmmFlag":I
    :cond_0
    return v1

    .line 667
    .restart local v0    # "lmmFlag":I
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private establishInitialState()V
    .locals 21

    .prologue
    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f11048a

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Button;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f110484

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f110485

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/CheckBox;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    .line 268
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v9

    .line 269
    .local v9, "isExtStorageEmulated":Z
    if-nez v9, :cond_0

    .line 270
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v18

    if-nez v18, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/MasterClear;->isExtStorageEncrypted()Z

    move-result v18

    .line 269
    if-eqz v18, :cond_9

    .line 271
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f110483

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 275
    .local v7, "externalOption":Landroid/widget/TextView;
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f11047e

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 278
    .local v5, "externalAlsoErased":Landroid/widget/TextView;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 280
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "\u2022 "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0b0ede

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 281
    const-string/jumbo v19, "\u2022 "

    .line 280
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 281
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0b0edf

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 280
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 281
    const-string/jumbo v19, "\n"

    .line 280
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 282
    const-string/jumbo v19, "\u2022 "

    .line 280
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0b0ee0

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 280
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 282
    const-string/jumbo v19, "\n"

    .line 280
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 283
    const-string/jumbo v19, "\u2022 "

    .line 280
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0b0ee1

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 280
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 283
    const-string/jumbo v19, "\n"

    .line 280
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 284
    const-string/jumbo v19, "\u2022 "

    .line 280
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0b0ee2

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 280
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 284
    const-string/jumbo v19, "\n"

    .line 280
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 285
    const-string/jumbo v19, "\u2022 "

    .line 280
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0b0ee3

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 280
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 287
    .local v3, "descSummary":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "\u2022 "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0b0ada

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 289
    .local v8, "googleSummary":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 290
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    :goto_0
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f11047f

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 298
    .local v6, "externalAlsoErasedSdCardKey":Landroid/widget/TextView;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "\u2022 "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0b10ee

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 299
    .local v4, "encryptedSdcardDesc":Ljava/lang/String;
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 307
    .end local v4    # "encryptedSdcardDesc":Ljava/lang/String;
    .end local v6    # "externalAlsoErasedSdCardKey":Landroid/widget/TextView;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    move-object/from16 v19, v0

    if-eqz v9, :cond_8

    const/16 v18, 0x0

    :goto_1
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 318
    .end local v3    # "descSummary":Ljava/lang/String;
    .end local v5    # "externalAlsoErased":Landroid/widget/TextView;
    .end local v7    # "externalOption":Landroid/widget/TextView;
    .end local v8    # "googleSummary":Ljava/lang/String;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const-string/jumbo v19, "user"

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/UserManager;

    .line 319
    .local v14, "um":Landroid/os/UserManager;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/MasterClear;->loadAccountList(Landroid/os/UserManager;)V

    .line 322
    const-string/jumbo v18, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    const-string/jumbo v18, "AIO"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v18

    if-nez v18, :cond_2

    const-string/jumbo v18, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    :cond_2
    if-eqz v9, :cond_5

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f110486

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 324
    .local v11, "mExternalTitle":Landroid/widget/TextView;
    const v18, 0x7f0b1390

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(I)V

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f110487

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 326
    .local v10, "mExternalSummary":Landroid/widget/TextView;
    const v18, 0x7f0b1391

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(I)V

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const-string/jumbo v19, "storage"

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/storage/StorageManager;

    .line 329
    .local v13, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v13}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v17

    .line 331
    .local v17, "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "vol$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/storage/VolumeInfo;

    .line 332
    .local v15, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v15, :cond_3

    invoke-virtual {v15}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v18

    if-nez v18, :cond_3

    .line 333
    invoke-virtual {v15}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v18

    if-eqz v18, :cond_3

    invoke-virtual {v15}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-virtual {v15}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 334
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/MasterClear;->mCanEraseExternalOnFuseSystem:Z

    .line 335
    invoke-virtual {v15}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MasterClear;->mStrSdVolumeId:Ljava/lang/String;

    .line 341
    .end local v15    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/MasterClear;->mCanEraseExternalOnFuseSystem:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/settings/MasterClear$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/MasterClear$4;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    .end local v10    # "mExternalSummary":Landroid/widget/TextView;
    .end local v11    # "mExternalTitle":Landroid/widget/TextView;
    .end local v13    # "storageManager":Landroid/os/storage/StorageManager;
    .end local v16    # "vol$iterator":Ljava/util/Iterator;
    .end local v17    # "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    :cond_5
    const-string/jumbo v18, "ro.config.rm_preload_enabled"

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 354
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/MasterClear;->addDescriptionForRemovingPreloadApp()V

    .line 357
    :cond_6
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 358
    .local v2, "contentDescription":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f11047c

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 359
    .local v12, "masterClearContainer":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/android/settings/MasterClear;->getContentDescription(Landroid/view/View;Ljava/lang/StringBuffer;)V

    .line 360
    invoke-virtual {v12, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 255
    return-void

    .line 292
    .end local v2    # "contentDescription":Ljava/lang/StringBuffer;
    .end local v12    # "masterClearContainer":Landroid/view/View;
    .end local v14    # "um":Landroid/os/UserManager;
    .restart local v3    # "descSummary":Ljava/lang/String;
    .restart local v5    # "externalAlsoErased":Landroid/widget/TextView;
    .restart local v7    # "externalOption":Landroid/widget/TextView;
    .restart local v8    # "googleSummary":Ljava/lang/String;
    :cond_7
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 307
    :cond_8
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 309
    .end local v3    # "descSummary":Ljava/lang/String;
    .end local v5    # "externalAlsoErased":Landroid/widget/TextView;
    .end local v7    # "externalOption":Landroid/widget/TextView;
    .end local v8    # "googleSummary":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/settings/MasterClear$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/MasterClear$3;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2
.end method

.method private getContentDescription(Landroid/view/View;Ljava/lang/StringBuffer;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "description"    # Ljava/lang/StringBuffer;

    .prologue
    .line 364
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    .line 365
    return-void

    .line 367
    :cond_0
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    move-object v2, p1

    .line 368
    check-cast v2, Landroid/view/ViewGroup;

    .line 369
    .local v2, "vGroup":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 370
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 371
    .local v1, "nextChild":Landroid/view/View;
    invoke-direct {p0, v1, p2}, Lcom/android/settings/MasterClear;->getContentDescription(Landroid/view/View;Ljava/lang/StringBuffer;)V

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 373
    .end local v0    # "i":I
    .end local v1    # "nextChild":Landroid/view/View;
    .end local v2    # "vGroup":Landroid/view/ViewGroup;
    :cond_1
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_2

    move-object v3, p1

    .line 374
    check-cast v3, Landroid/widget/TextView;

    .line 375
    .local v3, "vText":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 376
    const-string/jumbo v4, ","

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 363
    .end local v3    # "vText":Landroid/widget/TextView;
    :cond_2
    return-void
.end method

.method private isExtStorageEncrypted()Z
    .locals 2

    .prologue
    .line 381
    const-string/jumbo v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "state":Ljava/lang/String;
    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private loadAccountList(Landroid/os/UserManager;)V
    .locals 39
    .param p1, "um"    # Landroid/os/UserManager;

    .prologue
    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v36, v0

    const v37, 0x7f110480

    invoke-virtual/range {v36 .. v37}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 387
    .local v10, "accountsLabel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v36, v0

    const v37, 0x7f110481

    invoke-virtual/range {v36 .. v37}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 388
    .local v13, "contents":Landroid/widget/LinearLayout;
    invoke-virtual {v13}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 390
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v14

    .line 391
    .local v14, "context":Landroid/content/Context;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v36

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v30

    .line 392
    .local v30, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v31

    .line 394
    .local v31, "profilesSize":I
    invoke-static {v14}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v25

    .line 397
    .local v25, "mgr":Landroid/accounts/AccountManager;
    const-string/jumbo v36, "layout_inflater"

    .line 396
    move-object/from16 v0, v36

    invoke-virtual {v14, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/view/LayoutInflater;

    .line 399
    .local v23, "inflater":Landroid/view/LayoutInflater;
    const/4 v9, 0x0

    .line 400
    .local v9, "accountsCount":I
    const/16 v29, 0x0

    .local v29, "profileIndex":I
    :goto_0
    move/from16 v0, v29

    move/from16 v1, v31

    if-ge v0, v1, :cond_9

    .line 401
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/pm/UserInfo;

    .line 402
    .local v35, "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v0, v35

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v28, v0

    .line 403
    .local v28, "profileId":I
    new-instance v34, Landroid/os/UserHandle;

    move-object/from16 v0, v34

    move/from16 v1, v28

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 405
    .local v34, "userHandle":Landroid/os/UserHandle;
    const/16 v36, 0x64

    move/from16 v0, v28

    move/from16 v1, v36

    if-lt v0, v1, :cond_1

    .line 400
    :cond_0
    add-int/lit8 v29, v29, 0x1

    goto :goto_0

    .line 409
    :cond_1
    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v8

    .line 410
    .local v8, "accounts":[Landroid/accounts/Account;
    array-length v6, v8

    .line 411
    .local v6, "N":I
    if-eqz v6, :cond_0

    .line 414
    add-int/2addr v9, v6

    .line 416
    invoke-static {v14}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypesAsUser(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v16

    .line 418
    .local v16, "descs":[Landroid/accounts/AuthenticatorDescription;
    move-object/from16 v0, v16

    array-length v5, v0

    .line 420
    .local v5, "M":I
    move-object/from16 v0, v23

    invoke-static {v0, v13}, Lcom/android/settings/Utils;->inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v33

    .line 421
    .local v33, "titleView":Landroid/view/View;
    const v36, 0x1020016

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    .line 422
    .local v32, "titleText":Landroid/widget/TextView;
    invoke-virtual/range {v35 .. v35}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v36

    if-eqz v36, :cond_3

    const v36, 0x7f0b009e

    :goto_1
    move-object/from16 v0, v32

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 424
    move-object/from16 v0, v33

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 426
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_2
    move/from16 v0, v21

    if-ge v0, v6, :cond_0

    .line 427
    aget-object v7, v8, v21

    .line 428
    .local v7, "account":Landroid/accounts/Account;
    const/4 v15, 0x0

    .line 429
    .local v15, "desc":Landroid/accounts/AuthenticatorDescription;
    const/16 v24, 0x0

    .local v24, "j":I
    :goto_3
    move/from16 v0, v24

    if-ge v0, v5, :cond_2

    .line 430
    iget-object v0, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v36, v0

    aget-object v37, v16, v24

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_4

    .line 431
    aget-object v15, v16, v24

    .line 435
    .end local v15    # "desc":Landroid/accounts/AuthenticatorDescription;
    :cond_2
    if-nez v15, :cond_5

    .line 436
    const-string/jumbo v36, "MasterClear"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "No descriptor for account name="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    iget-object v0, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 437
    const-string/jumbo v38, " type="

    .line 436
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 437
    iget-object v0, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v38, v0

    .line 436
    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :goto_4
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 423
    .end local v7    # "account":Landroid/accounts/Account;
    .end local v21    # "i":I
    .end local v24    # "j":I
    :cond_3
    const v36, 0x7f0b009d

    goto :goto_1

    .line 429
    .restart local v7    # "account":Landroid/accounts/Account;
    .restart local v15    # "desc":Landroid/accounts/AuthenticatorDescription;
    .restart local v21    # "i":I
    .restart local v24    # "j":I
    :cond_4
    add-int/lit8 v24, v24, 0x1

    goto :goto_3

    .line 440
    .end local v15    # "desc":Landroid/accounts/AuthenticatorDescription;
    :cond_5
    const/16 v22, 0x0

    .line 442
    .local v22, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget v0, v15, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v36, v0

    if-eqz v36, :cond_6

    .line 443
    iget-object v0, v15, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v36, v0

    .line 444
    const/16 v37, 0x0

    .line 443
    move-object/from16 v0, v36

    move/from16 v1, v37

    move-object/from16 v2, v34

    invoke-virtual {v14, v0, v1, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v11

    .line 447
    .local v11, "authContext":Landroid/content/Context;
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v27

    .line 448
    .local v27, "pm":Landroid/content/pm/PackageManager;
    iget-object v0, v15, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->shouldPackIntoIconTray(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_8

    .line 449
    iget v0, v15, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v36, v0

    move/from16 v0, v36

    invoke-virtual {v11, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v36

    .line 450
    const/16 v37, 0x1

    .line 449
    move-object/from16 v0, v27

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getDrawableForIconTray(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v36

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v22

    .line 461
    .end local v11    # "authContext":Landroid/content/Context;
    .end local v22    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v27    # "pm":Landroid/content/pm/PackageManager;
    :cond_6
    :goto_5
    if-nez v22, :cond_7

    .line 462
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v22

    .line 465
    :cond_7
    const v36, 0x7f04017c

    .line 466
    const/16 v37, 0x0

    .line 465
    move-object/from16 v0, v23

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v13, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 467
    .local v12, "child":Landroid/widget/TextView;
    iget-object v0, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v36

    const v37, 0x7f0a001a

    invoke-virtual/range {v36 .. v37}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .line 470
    .local v20, "height":I
    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v20

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 471
    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 474
    invoke-virtual {v13, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_4

    .line 452
    .end local v12    # "child":Landroid/widget/TextView;
    .end local v20    # "height":I
    .restart local v11    # "authContext":Landroid/content/Context;
    .restart local v22    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v27    # "pm":Landroid/content/pm/PackageManager;
    :cond_8
    :try_start_1
    iget v0, v15, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v36, v0

    move/from16 v0, v36

    invoke-virtual {v11, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v36

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v22

    .local v22, "icon":Landroid/graphics/drawable/Drawable;
    goto :goto_5

    .line 458
    .end local v11    # "authContext":Landroid/content/Context;
    .end local v27    # "pm":Landroid/content/pm/PackageManager;
    .local v22, "icon":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v18

    .line 459
    .local v18, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v36, "MasterClear"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "Invalid icon id for account type "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    iget-object v0, v15, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 456
    .end local v18    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v17

    .line 457
    .local v17, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v36, "MasterClear"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "Bad package name for account type "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    iget-object v0, v15, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 478
    .end local v5    # "M":I
    .end local v6    # "N":I
    .end local v7    # "account":Landroid/accounts/Account;
    .end local v8    # "accounts":[Landroid/accounts/Account;
    .end local v16    # "descs":[Landroid/accounts/AuthenticatorDescription;
    .end local v17    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v21    # "i":I
    .end local v22    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v24    # "j":I
    .end local v28    # "profileId":I
    .end local v32    # "titleText":Landroid/widget/TextView;
    .end local v33    # "titleView":Landroid/view/View;
    .end local v34    # "userHandle":Landroid/os/UserHandle;
    .end local v35    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_9
    if-lez v9, :cond_a

    .line 479
    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    .line 480
    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 483
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v36, v0

    const v37, 0x7f110482

    invoke-virtual/range {v36 .. v37}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    .line 484
    .local v26, "otherUsers":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/os/UserManager;->getUserCount()I

    move-result v36

    sub-int v36, v36, v31

    if-lez v36, :cond_b

    const/16 v19, 0x1

    .line 485
    .local v19, "hasOtherUsers":Z
    :goto_6
    if-eqz v19, :cond_c

    const/16 v36, 0x0

    :goto_7
    move-object/from16 v0, v26

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 385
    return-void

    .line 484
    .end local v19    # "hasOtherUsers":Z
    :cond_b
    const/16 v19, 0x0

    goto :goto_6

    .line 485
    .restart local v19    # "hasOtherUsers":Z
    :cond_c
    const/16 v36, 0x8

    goto :goto_7
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3
    .param p1, "request"    # I

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 131
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 135
    .local v0, "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    const/4 v2, 0x0

    .line 132
    invoke-virtual {v0, p1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v2

    return v2
.end method

.method private showFinalConfirmation()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 186
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 187
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "erase_sd"

    iget-object v1, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 189
    const-string/jumbo v0, "erase_sd_id"

    iget-object v1, p0, Lcom/android/settings/MasterClear;->mStrSdVolumeId:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string/jumbo v0, "can_erase_sd_on_fuse"

    iget-boolean v1, p0, Lcom/android/settings/MasterClear;->mCanEraseExternalOnFuseSystem:Z

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/MasterClearConfirm;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 192
    const v3, 0x7f0b144c

    const/4 v6, 0x0

    move-object v5, v4

    .line 191
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 185
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 678
    const/16 v0, 0x42

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 141
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/OptionsMenuFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 147
    const/16 v0, 0x38

    if-ne p1, v0, :cond_1

    .line 148
    if-ne p2, v1, :cond_0

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/MasterClear;->mPinConfirmed:Z

    .line 151
    :cond_0
    return-void

    .line 152
    :cond_1
    const/16 v0, 0x3a

    if-eq p1, v0, :cond_2

    .line 153
    const/16 v0, 0x37

    if-eq p1, v0, :cond_2

    .line 154
    return-void

    .line 166
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 140
    :goto_0
    :pswitch_0
    return-void

    .line 168
    :pswitch_1
    if-ne p2, v1, :cond_3

    .line 169
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->showFinalConfirmation()V

    goto :goto_0

    .line 171
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    goto :goto_0

    .line 175
    :pswitch_2
    if-ne p2, v1, :cond_4

    .line 176
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->showFinalConfirmation()V

    goto :goto_0

    .line 178
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 492
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "no_factory_reset"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 491
    invoke-static {v3, v4, v5}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 493
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 494
    .local v1, "um":Landroid/os/UserManager;
    invoke-virtual {v1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 495
    const-string/jumbo v4, "no_factory_reset"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 494
    invoke-static {v3, v4, v5}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 496
    :cond_0
    const v3, 0x7f04017e

    invoke-virtual {p1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    return-object v3

    .line 497
    :cond_1
    if-eqz v0, :cond_2

    .line 498
    const v3, 0x7f040027

    invoke-virtual {p1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 499
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v2, v0, v7}, Lcom/android/settings/ShowAdminSupportDetailsDialog;->setAdminSupportDetails(Landroid/app/Activity;Landroid/view/View;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;Z)V

    .line 500
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 501
    return-object v2

    .line 505
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 506
    new-instance v3, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/android/settings/MasterClear;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    .line 510
    :cond_3
    const v3, 0x7f04017b

    invoke-virtual {p1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    .line 512
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    .line 513
    iget-object v3, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    return-object v3
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 633
    invoke-super {p0}, Lcom/android/settings/OptionsMenuFragment;->onResume()V

    .line 635
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->checkReactivationLock()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 636
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "lock_my_mobile"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 642
    :goto_0
    iget-boolean v3, p0, Lcom/android/settings/MasterClear;->mPinConfirmed:Z

    if-eqz v3, :cond_0

    .line 643
    iput-boolean v2, p0, Lcom/android/settings/MasterClear;->mPinConfirmed:Z

    .line 644
    const/16 v3, 0x37

    invoke-direct {p0, v3}, Lcom/android/settings/MasterClear;->runKeyguardConfirmation(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 645
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->showFinalConfirmation()V

    .line 650
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string/jumbo v5, "isFactoryResetAllowed"

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 651
    .local v0, "isFactoryResetAllowed":I
    iget-object v3, p0, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 652
    iget-object v3, p0, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    if-ne v0, v1, :cond_3

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 632
    :cond_1
    return-void

    .line 638
    .end local v0    # "isFactoryResetAllowed":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "lock_my_mobile"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .restart local v0    # "isFactoryResetAllowed":I
    :cond_3
    move v1, v2

    .line 652
    goto :goto_1
.end method
