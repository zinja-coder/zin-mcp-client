.class public Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;
.super Lcom/badlogic/gdx/graphics/g3d/Attribute;
.source "FloatAttribute.java"


# static fields
.field public static final AlphaTest:J

.field public static final AlphaTestAlias:Ljava/lang/String; = "alphaTest"

.field public static final Shininess:J

.field public static final ShininessAlias:Ljava/lang/String; = "shininess"


# instance fields
.field public value:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const-string v0, "shininess"

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->register(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->Shininess:J

    .line 32
    const-string v0, "alphaTest"

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->register(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->AlphaTest:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "type"    # J

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/Attribute;-><init>(J)V

    .line 42
    return-void
.end method

.method public constructor <init>(JF)V
    .locals 1
    .param p1, "type"    # J
    .param p3, "value"    # F

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/Attribute;-><init>(J)V

    .line 46
    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->value:F

    .line 47
    return-void
.end method

.method public static createAlphaTest(F)Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;
    .locals 4
    .param p0, "value"    # F

    .prologue
    .line 35
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->AlphaTest:J

    invoke-direct {v0, v2, v3, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;-><init>(JF)V

    return-object v0
.end method

.method public static createShininess(F)Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;
    .locals 4
    .param p0, "value"    # F

    .prologue
    .line 28
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->Shininess:J

    invoke-direct {v0, v2, v3, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;-><init>(JF)V

    return-object v0
.end method


# virtual methods
.method public copy()Lcom/badlogic/gdx/graphics/g3d/Attribute;
    .locals 4

    .prologue
    .line 51
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;

    iget-wide v2, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->type:J

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->value:F

    invoke-direct {v0, v2, v3, v1}, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;-><init>(JF)V

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 56
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/Attribute;->hashCode()I

    move-result v0

    .line 57
    .local v0, "result":I
    mul-int/lit16 v1, v0, 0x3d1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->value:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 58
    return v0
.end method
