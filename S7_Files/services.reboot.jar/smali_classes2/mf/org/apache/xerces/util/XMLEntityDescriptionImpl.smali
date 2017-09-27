.class public Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;
.super Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;
.source "XMLEntityDescriptionImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/impl/XMLEntityDescription;


# instance fields
.field protected fEntityName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;-><init>()V

    .line 52
    invoke-virtual/range {p0 .. p5}, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->setDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;-><init>()V

    .line 67
    invoke-virtual/range {p0 .. p6}, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->setDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->clear()V

    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fEntityName:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fEntityName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 143
    invoke-super {p0}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->hashCode()I

    move-result v0

    .line 144
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fEntityName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 147
    :goto_0
    return v0

    .line 145
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fEntityName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public setDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 110
    invoke-virtual/range {v0 .. v6}, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->setDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public setDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 125
    iput-object p1, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fEntityName:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 126
    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public setEntityName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fEntityName:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x3a

    .line 152
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 153
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fEntityName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 156
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 157
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fPublicId:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 160
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 161
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fLiteralSystemId:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 164
    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 165
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fBaseSystemId:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 168
    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 169
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fExpandedSystemId:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 172
    :goto_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 173
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fNamespace:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 176
    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 154
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fEntityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 158
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fPublicId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 162
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fLiteralSystemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 166
    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fBaseSystemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 170
    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fExpandedSystemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 174
    :cond_5
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fNamespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5
.end method
