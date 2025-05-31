.class public final Lcom/badlogic/gdx/graphics/VertexAttribute;
.super Ljava/lang/Object;
.source "VertexAttribute.java"


# instance fields
.field public alias:Ljava/lang/String;

.field public final normalized:Z

.field public final numComponents:I

.field public offset:I

.field public final type:I

.field public unit:I

.field public final usage:I

.field private final usageIndex:I


# direct methods
.method private constructor <init>(IIIZLjava/lang/String;)V
    .locals 7
    .param p1, "usage"    # I
    .param p2, "numComponents"    # I
    .param p3, "type"    # I
    .param p4, "normalized"    # Z
    .param p5, "alias"    # Ljava/lang/String;

    .prologue
    .line 68
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IIIZLjava/lang/String;I)V

    .line 69
    return-void
.end method

.method private constructor <init>(IIIZLjava/lang/String;I)V
    .locals 1
    .param p1, "usage"    # I
    .param p2, "numComponents"    # I
    .param p3, "type"    # I
    .param p4, "normalized"    # Z
    .param p5, "alias"    # Ljava/lang/String;
    .param p6, "index"    # I

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    .line 73
    iput p2, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    .line 74
    iput p3, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->type:I

    .line 75
    iput-boolean p4, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->normalized:Z

    .line 76
    iput-object p5, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    .line 77
    iput p6, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->unit:I

    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->usageIndex:I

    .line 79
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .param p1, "usage"    # I
    .param p2, "numComponents"    # I
    .param p3, "alias"    # Ljava/lang/String;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;I)V
    .locals 7
    .param p1, "usage"    # I
    .param p2, "numComponents"    # I
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "index"    # I

    .prologue
    const/4 v0, 0x4

    .line 63
    if-ne p1, v0, :cond_0

    const/16 v3, 0x1401

    :goto_0
    if-ne p1, v0, :cond_1

    const/4 v4, 0x1

    :goto_1
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IIIZLjava/lang/String;I)V

    .line 65
    return-void

    .line 63
    :cond_0
    const/16 v3, 0x1406

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static Binormal()Lcom/badlogic/gdx/graphics/VertexAttribute;
    .locals 4

    .prologue
    .line 112
    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v1, 0x100

    const/4 v2, 0x3

    const-string v3, "a_binormal"

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public static BoneWeight(I)Lcom/badlogic/gdx/graphics/VertexAttribute;
    .locals 5
    .param p0, "unit"    # I

    .prologue
    .line 116
    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v1, 0x40

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "a_boneWeight"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;I)V

    return-object v0
.end method

.method public static Color()Lcom/badlogic/gdx/graphics/VertexAttribute;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 96
    invoke-static {}, Lcom/badlogic/gdx/graphics/VertexAttribute;->ColorPacked()Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static ColorPacked()Lcom/badlogic/gdx/graphics/VertexAttribute;
    .locals 6

    .prologue
    const/4 v1, 0x4

    .line 100
    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v3, 0x1401

    const/4 v4, 0x1

    const-string v5, "a_color"

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IIIZLjava/lang/String;)V

    return-object v0
.end method

.method public static ColorUnpacked()Lcom/badlogic/gdx/graphics/VertexAttribute;
    .locals 6

    .prologue
    .line 104
    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const-string v5, "a_color"

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IIIZLjava/lang/String;)V

    return-object v0
.end method

.method public static Normal()Lcom/badlogic/gdx/graphics/VertexAttribute;
    .locals 4

    .prologue
    .line 90
    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v1, 0x8

    const/4 v2, 0x3

    const-string v3, "a_normal"

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public static Position()Lcom/badlogic/gdx/graphics/VertexAttribute;
    .locals 4

    .prologue
    .line 82
    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v1, 0x1

    const/4 v2, 0x3

    const-string v3, "a_position"

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public static Tangent()Lcom/badlogic/gdx/graphics/VertexAttribute;
    .locals 4

    .prologue
    .line 108
    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v1, 0x80

    const/4 v2, 0x3

    const-string v3, "a_tangent"

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public static TexCoords(I)Lcom/badlogic/gdx/graphics/VertexAttribute;
    .locals 5
    .param p0, "unit"    # I

    .prologue
    .line 86
    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v1, 0x10

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "a_texCoord"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public equals(Lcom/badlogic/gdx/graphics/VertexAttribute;)Z
    .locals 2
    .param p1, "other"    # Lcom/badlogic/gdx/graphics/VertexAttribute;

    .prologue
    .line 129
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    iget v1, p1, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget v1, p1, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->unit:I

    iget v1, p1, Lcom/badlogic/gdx/graphics/VertexAttribute;->unit:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 122
    instance-of v0, p1, Lcom/badlogic/gdx/graphics/VertexAttribute;

    if-nez v0, :cond_0

    .line 123
    const/4 v0, 0x0

    .line 125
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    check-cast p1, Lcom/badlogic/gdx/graphics/VertexAttribute;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/VertexAttribute;->equals(Lcom/badlogic/gdx/graphics/VertexAttribute;)Z

    move-result v0

    goto :goto_0
.end method

.method public getKey()I
    .locals 2

    .prologue
    .line 135
    iget v0, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->usageIndex:I

    shl-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->unit:I

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/VertexAttribute;->getKey()I

    move-result v0

    .line 141
    .local v0, "result":I
    mul-int/lit16 v1, v0, 0x21d

    iget v2, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    add-int v0, v1, v2

    .line 142
    mul-int/lit16 v1, v0, 0x21d

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 143
    return v0
.end method
