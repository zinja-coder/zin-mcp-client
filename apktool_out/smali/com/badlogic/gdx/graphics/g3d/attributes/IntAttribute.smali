.class public Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;
.super Lcom/badlogic/gdx/graphics/g3d/Attribute;
.source "IntAttribute.java"


# static fields
.field public static final CullFace:J

.field public static final CullFaceAlias:Ljava/lang/String; = "cullface"


# instance fields
.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    const-string v0, "cullface"

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;->register(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;->CullFace:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "type"    # J

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/Attribute;-><init>(J)V

    .line 33
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1
    .param p1, "type"    # J
    .param p3, "value"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/Attribute;-><init>(J)V

    .line 37
    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;->value:I

    .line 38
    return-void
.end method

.method public static createCullFace(I)Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;
    .locals 4
    .param p0, "value"    # I

    .prologue
    .line 26
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;->CullFace:J

    invoke-direct {v0, v2, v3, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;-><init>(JI)V

    return-object v0
.end method


# virtual methods
.method public copy()Lcom/badlogic/gdx/graphics/g3d/Attribute;
    .locals 4

    .prologue
    .line 42
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;

    iget-wide v2, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;->type:J

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;->value:I

    invoke-direct {v0, v2, v3, v1}, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;-><init>(JI)V

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 47
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/Attribute;->hashCode()I

    move-result v0

    .line 48
    .local v0, "result":I
    mul-int/lit16 v1, v0, 0x3d7

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/IntAttribute;->value:I

    add-int v0, v1, v2

    .line 49
    return v0
.end method
