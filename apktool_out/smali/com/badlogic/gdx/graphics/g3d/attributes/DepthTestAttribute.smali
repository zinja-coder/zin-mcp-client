.class public Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;
.super Lcom/badlogic/gdx/graphics/g3d/Attribute;
.source "DepthTestAttribute.java"


# static fields
.field public static final Alias:Ljava/lang/String; = "depthStencil"

.field protected static Mask:J

.field public static final Type:J


# instance fields
.field public depthFunc:I

.field public depthMask:Z

.field public depthRangeFar:F

.field public depthRangeNear:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const-string v0, "depthStencil"

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->register(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->Type:J

    .line 28
    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->Type:J

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->Mask:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x203

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;-><init>(I)V

    .line 45
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "depthFunc"    # I

    .prologue
    .line 52
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;-><init>(IZ)V

    .line 53
    return-void
.end method

.method public constructor <init>(IFF)V
    .locals 1
    .param p1, "depthFunc"    # I
    .param p2, "depthRangeNear"    # F
    .param p3, "depthRangeFar"    # F

    .prologue
    .line 60
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;-><init>(IFFZ)V

    .line 61
    return-void
.end method

.method public constructor <init>(IFFZ)V
    .locals 8
    .param p1, "depthFunc"    # I
    .param p2, "depthRangeNear"    # F
    .param p3, "depthRangeFar"    # F
    .param p4, "depthMask"    # Z

    .prologue
    .line 64
    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->Type:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;-><init>(JIFFZ)V

    .line 65
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2
    .param p1, "depthFunc"    # I
    .param p2, "depthMask"    # Z

    .prologue
    .line 56
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;-><init>(IFFZ)V

    .line 57
    return-void
.end method

.method public constructor <init>(JIFFZ)V
    .locals 3
    .param p1, "type"    # J
    .param p3, "depthFunc"    # I
    .param p4, "depthRangeNear"    # F
    .param p5, "depthRangeFar"    # F
    .param p6, "depthMask"    # Z

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/Attribute;-><init>(J)V

    .line 69
    invoke-static {p1, p2}, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->is(J)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Invalid type specified"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->depthFunc:I

    .line 71
    iput p4, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->depthRangeNear:F

    .line 72
    iput p5, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->depthRangeFar:F

    .line 73
    iput-boolean p6, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->depthMask:Z

    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;)V
    .locals 8
    .param p1, "rhs"    # Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;

    .prologue
    .line 77
    iget-wide v2, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->type:J

    iget v4, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->depthFunc:I

    iget v5, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->depthRangeNear:F

    iget v6, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->depthRangeFar:F

    iget-boolean v7, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->depthMask:Z

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;-><init>(JIFFZ)V

    .line 78
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "depthMask"    # Z

    .prologue
    .line 48
    const/16 v0, 0x203

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;-><init>(IZ)V

    .line 49
    return-void
.end method

.method public static final is(J)Z
    .locals 4
    .param p0, "mask"    # J

    .prologue
    .line 31
    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->Mask:J

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public copy()Lcom/badlogic/gdx/graphics/g3d/Attribute;
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;-><init>(Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 87
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/Attribute;->hashCode()I

    move-result v0

    .line 88
    .local v0, "result":I
    mul-int/lit16 v1, v0, 0x3cb

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->depthFunc:I

    add-int v0, v1, v2

    .line 89
    mul-int/lit16 v1, v0, 0x3cb

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->depthRangeNear:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 90
    mul-int/lit16 v1, v0, 0x3cb

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->depthRangeFar:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 91
    mul-int/lit16 v2, v0, 0x3cb

    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;->depthMask:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int v0, v2, v1

    .line 92
    return v0

    .line 91
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
