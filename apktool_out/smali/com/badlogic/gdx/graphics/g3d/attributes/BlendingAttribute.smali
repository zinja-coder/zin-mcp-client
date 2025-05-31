.class public Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;
.super Lcom/badlogic/gdx/graphics/g3d/Attribute;
.source "BlendingAttribute.java"


# static fields
.field public static final Alias:Ljava/lang/String; = "blended"

.field public static final Type:J


# instance fields
.field public blended:Z

.field public destFunction:I

.field public opacity:F

.field public sourceFunction:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const-string v0, "blended"

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->register(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;-><init>(Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;)V

    .line 44
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .param p1, "opacity"    # F

    .prologue
    .line 67
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;-><init>(ZF)V

    .line 68
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "sourceFunc"    # I
    .param p2, "destFunc"    # I

    .prologue
    .line 59
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;-><init>(IIF)V

    .line 60
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 1
    .param p1, "sourceFunc"    # I
    .param p2, "destFunc"    # I
    .param p3, "opacity"    # F

    .prologue
    .line 55
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;-><init>(ZIIF)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;)V
    .locals 4
    .param p1, "copyFrom"    # Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;

    .prologue
    .line 71
    if-nez p1, :cond_0

    const/4 v0, 0x1

    move v3, v0

    :goto_0
    if-nez p1, :cond_1

    const/16 v0, 0x302

    move v2, v0

    :goto_1
    if-nez p1, :cond_2

    const/16 v0, 0x303

    move v1, v0

    :goto_2
    if-nez p1, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_3
    invoke-direct {p0, v3, v2, v1, v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;-><init>(ZIIF)V

    .line 73
    return-void

    .line 71
    :cond_0
    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->blended:Z

    move v3, v0

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->sourceFunction:I

    move v2, v0

    goto :goto_1

    :cond_2
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->destFunction:I

    move v1, v0

    goto :goto_2

    :cond_3
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->opacity:F

    goto :goto_3
.end method

.method public constructor <init>(ZF)V
    .locals 2
    .param p1, "blended"    # Z
    .param p2, "opacity"    # F

    .prologue
    .line 63
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;-><init>(ZIIF)V

    .line 64
    return-void
.end method

.method public constructor <init>(ZIIF)V
    .locals 2
    .param p1, "blended"    # Z
    .param p2, "sourceFunc"    # I
    .param p3, "destFunc"    # I
    .param p4, "opacity"    # F

    .prologue
    .line 47
    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Attribute;-><init>(J)V

    .line 40
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->opacity:F

    .line 48
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->blended:Z

    .line 49
    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->sourceFunction:I

    .line 50
    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->destFunction:I

    .line 51
    iput p4, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->opacity:F

    .line 52
    return-void
.end method

.method public static final is(J)Z
    .locals 2
    .param p0, "mask"    # J

    .prologue
    .line 28
    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    and-long/2addr v0, p0

    cmp-long v0, v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic copy()Lcom/badlogic/gdx/graphics/g3d/Attribute;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->copy()Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;-><init>(Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 82
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/Attribute;->hashCode()I

    move-result v0

    .line 83
    .local v0, "result":I
    mul-int/lit16 v2, v0, 0x3b3

    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->blended:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int v0, v2, v1

    .line 84
    mul-int/lit16 v1, v0, 0x3b3

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->sourceFunction:I

    add-int v0, v1, v2

    .line 85
    mul-int/lit16 v1, v0, 0x3b3

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->destFunction:I

    add-int v0, v1, v2

    .line 86
    mul-int/lit16 v1, v0, 0x3b3

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->opacity:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 87
    return v0

    .line 83
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
