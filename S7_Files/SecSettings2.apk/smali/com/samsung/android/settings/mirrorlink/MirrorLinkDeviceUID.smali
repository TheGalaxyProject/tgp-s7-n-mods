.class public Lcom/samsung/android/settings/mirrorlink/MirrorLinkDeviceUID;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MirrorLinkDeviceUID.java"


# instance fields
.field private mTextViewNumber:Landroid/widget/TextView;

.field private mTextViewTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkDeviceUID;->mTextViewTitle:Landroid/widget/TextView;

    .line 40
    iput-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkDeviceUID;->mTextViewNumber:Landroid/widget/TextView;

    .line 36
    return-void
.end method

.method private updateDeviceUID()V
    .locals 21

    .prologue
    .line 67
    const/4 v14, 0x0

    .line 68
    .local v14, "sn":Ljava/lang/String;
    const-string/jumbo v16, " "

    .line 69
    .local v16, "uuid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkDeviceUID;->mTextViewNumber:Landroid/widget/TextView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 70
    const-string/jumbo v17, "ril.serialnumber"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 71
    .local v14, "sn":Ljava/lang/String;
    if-eqz v14, :cond_0

    const-string/jumbo v17, "00000000000"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 72
    :cond_0
    const-string/jumbo v17, "ro.serialno"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 74
    :cond_1
    if-eqz v14, :cond_4

    .line 76
    :try_start_0
    const-string/jumbo v17, "SHA-1"

    invoke-static/range {v17 .. v17}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v10

    .line 78
    .local v10, "md":Ljava/security/MessageDigest;
    const-string/jumbo v3, "6ba7b8129dad11d180b400c04fd430c8"

    .line 80
    .local v3, "NAMESPACE_OID":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    new-array v4, v0, [B

    .line 81
    .local v4, "NameSpace_OID":[B
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, v4

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_2

    .line 82
    mul-int/lit8 v17, v8, 0x2

    mul-int/lit8 v18, v8, 0x2

    add-int/lit8 v18, v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x10

    invoke-static/range {v17 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v4, v8

    .line 81
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 84
    :cond_2
    const-string/jumbo v17, "UTF-8"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 85
    .local v5, "SerialNumber":[B
    array-length v0, v4

    move/from16 v17, v0

    array-length v0, v5

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    new-array v9, v0, [B

    .line 86
    .local v9, "input":[B
    array-length v0, v4

    move/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-static {v4, v0, v9, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 87
    array-length v0, v4

    move/from16 v17, v0

    array-length v0, v5

    move/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v5, v0, v9, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 88
    invoke-virtual {v10, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 89
    invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v12

    .line 90
    .local v12, "result":[B
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 92
    .local v13, "sb":Ljava/lang/StringBuffer;
    const/16 v17, 0x8

    aget-byte v15, v12, v17

    .line 93
    .local v15, "temp":B
    and-int/lit8 v17, v15, 0x3f

    move/from16 v0, v17

    int-to-byte v15, v0

    .line 94
    or-int/lit16 v0, v15, 0x80

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    const/16 v18, 0x8

    aput-byte v17, v12, v18

    .line 95
    const/4 v8, 0x0

    :goto_1
    array-length v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_3

    .line 96
    aget-byte v17, v12, v8

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v0, v17

    add-int/lit16 v0, v0, 0x100

    move/from16 v17, v0

    const/16 v18, 0x10

    invoke-static/range {v17 .. v18}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 98
    :cond_3
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    .line 99
    .local v11, "plain":Ljava/lang/String;
    const-string/jumbo v17, "5"

    const/16 v18, 0xc

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v13, v0, v1, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    .line 101
    const-string/jumbo v17, "%s-%s-%s-%s-%s"

    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v18, v20

    const/16 v19, 0x8

    const/16 v20, 0xc

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    aput-object v19, v18, v20

    .line 102
    const/16 v19, 0xc

    const/16 v20, 0x10

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x2

    aput-object v19, v18, v20

    const/16 v19, 0x10

    const/16 v20, 0x14

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x3

    aput-object v19, v18, v20

    const/16 v19, 0x14

    const/16 v20, 0x20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x4

    aput-object v19, v18, v20

    .line 101
    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 109
    .end local v3    # "NAMESPACE_OID":Ljava/lang/String;
    .end local v4    # "NameSpace_OID":[B
    .end local v5    # "SerialNumber":[B
    .end local v8    # "i":I
    .end local v9    # "input":[B
    .end local v10    # "md":Ljava/security/MessageDigest;
    .end local v11    # "plain":Ljava/lang/String;
    .end local v12    # "result":[B
    .end local v13    # "sb":Ljava/lang/StringBuffer;
    .end local v15    # "temp":B
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkDeviceUID;->mTextViewNumber:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .end local v14    # "sn":Ljava/lang/String;
    :cond_5
    return-void

    .line 105
    .restart local v14    # "sn":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 106
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    .line 103
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v7

    .line 104
    .local v7, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v7}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkDeviceUID;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkDeviceUID;->setHasOptionsMenu(Z)V

    .line 48
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 55
    const v1, 0x7f040181

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 57
    const v1, 0x7f110497

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkDeviceUID;->mTextViewTitle:Landroid/widget/TextView;

    .line 58
    const v1, 0x7f110498

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkDeviceUID;->mTextViewNumber:Landroid/widget/TextView;

    .line 59
    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkDeviceUID;->mTextViewTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkDeviceUID;->updateDeviceUID()V

    .line 63
    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 130
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 129
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 120
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 119
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 115
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 114
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 125
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 124
    return-void
.end method
