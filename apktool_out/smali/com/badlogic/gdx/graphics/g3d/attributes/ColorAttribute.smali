.class public Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;
.super Lcom/badlogic/gdx/graphics/g3d/Attribute;
.source "ColorAttribute.java"


# static fields
.field public static final Ambient:J

.field public static final AmbientAlias:Ljava/lang/String; = "ambientColor"

.field public static final AmbientLight:J

.field public static final AmbientLightAlias:Ljava/lang/String; = "ambientLightColor"

.field public static final Diffuse:J

.field public static final DiffuseAlias:Ljava/lang/String; = "diffuseColor"

.field public static final Emissive:J

.field public static final EmissiveAlias:Ljava/lang/String; = "emissiveColor"

.field public static final Fog:J

.field public static final FogAlias:Ljava/lang/String; = "fogColor"

.field protected static Mask:J = 0x0L

.field public static final Reflection:J

.field public static final ReflectionAlias:Ljava/lang/String; = "reflectionColor"

.field public static final Specular:J

.field public static final SpecularAlias:Ljava/lang/String; = "specularColor"


# instance fields
.field public final color:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 25
    const-string v0, "diffuseColor"

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->register(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Diffuse:J

    .line 27
    const-string v0, "specularColor"

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->register(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Specular:J

    .line 29
    const-string v0, "ambientColor"

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->register(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Ambient:J

    .line 31
    const-string v0, "emissiveColor"

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->register(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Emissive:J

    .line 33
    const-string v0, "reflectionColor"

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->register(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Reflection:J

    .line 35
    const-string v0, "ambientLightColor"

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->register(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->AmbientLight:J

    .line 37
    const-string v0, "fogColor"

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->register(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Fog:J

    .line 39
    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Ambient:J

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Diffuse:J

    or-long/2addr v0, v2

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Specular:J

    or-long/2addr v0, v2

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Emissive:J

    or-long/2addr v0, v2

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Reflection:J

    or-long/2addr v0, v2

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->AmbientLight:J

    or-long/2addr v0, v2

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Fog:J

    or-long/2addr v0, v2

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Mask:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "type"    # J

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/Attribute;-><init>(J)V

    .line 77
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 81
    invoke-static {p1, p2}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->is(J)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Invalid type specified"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    return-void
.end method

.method public constructor <init>(JFFFF)V
    .locals 1
    .param p1, "type"    # J
    .param p3, "r"    # F
    .param p4, "g"    # F
    .param p5, "b"    # F
    .param p6, "a"    # F

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(J)V

    .line 91
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p3, p4, p5, p6}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    .line 92
    return-void
.end method

.method public constructor <init>(JLcom/badlogic/gdx/graphics/Color;)V
    .locals 1
    .param p1, "type"    # J
    .param p3, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(J)V

    .line 86
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 87
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;)V
    .locals 3
    .param p1, "copyFrom"    # Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    .prologue
    .line 95
    iget-wide v0, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->type:J

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JLcom/badlogic/gdx/graphics/Color;)V

    .line 96
    return-void
.end method

.method public static final createAmbient(FFFF)Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;
    .locals 8
    .param p0, "r"    # F
    .param p1, "g"    # F
    .param p2, "b"    # F
    .param p3, "a"    # F

    .prologue
    .line 50
    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Ambient:J

    move v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JFFFF)V

    return-object v1
.end method

.method public static final createAmbient(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;
    .locals 4
    .param p0, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 46
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Ambient:J

    invoke-direct {v0, v2, v3, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JLcom/badlogic/gdx/graphics/Color;)V

    return-object v0
.end method

.method public static final createDiffuse(FFFF)Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;
    .locals 8
    .param p0, "r"    # F
    .param p1, "g"    # F
    .param p2, "b"    # F
    .param p3, "a"    # F

    .prologue
    .line 58
    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Diffuse:J

    move v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JFFFF)V

    return-object v1
.end method

.method public static final createDiffuse(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;
    .locals 4
    .param p0, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 54
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Diffuse:J

    invoke-direct {v0, v2, v3, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JLcom/badlogic/gdx/graphics/Color;)V

    return-object v0
.end method

.method public static final createReflection(FFFF)Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;
    .locals 8
    .param p0, "r"    # F
    .param p1, "g"    # F
    .param p2, "b"    # F
    .param p3, "a"    # F

    .prologue
    .line 74
    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Reflection:J

    move v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JFFFF)V

    return-object v1
.end method

.method public static final createReflection(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;
    .locals 4
    .param p0, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 70
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Reflection:J

    invoke-direct {v0, v2, v3, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JLcom/badlogic/gdx/graphics/Color;)V

    return-object v0
.end method

.method public static final createSpecular(FFFF)Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;
    .locals 8
    .param p0, "r"    # F
    .param p1, "g"    # F
    .param p2, "b"    # F
    .param p3, "a"    # F

    .prologue
    .line 66
    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Specular:J

    move v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JFFFF)V

    return-object v1
.end method

.method public static final createSpecular(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;
    .locals 4
    .param p0, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 62
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Specular:J

    invoke-direct {v0, v2, v3, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JLcom/badlogic/gdx/graphics/Color;)V

    return-object v0
.end method

.method public static final is(J)Z
    .locals 4
    .param p0, "mask"    # J

    .prologue
    .line 42
    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Mask:J

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
    .line 100
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 105
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/Attribute;->hashCode()I

    move-result v0

    .line 106
    .local v0, "result":I
    mul-int/lit16 v1, v0, 0x3b9

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Color;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 107
    return v0
.end method
