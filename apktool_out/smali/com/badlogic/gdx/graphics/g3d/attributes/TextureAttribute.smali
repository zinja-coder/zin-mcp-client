.class public Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
.super Lcom/badlogic/gdx/graphics/g3d/Attribute;
.source "TextureAttribute.java"


# static fields
.field public static final Ambient:J

.field public static final AmbientAlias:Ljava/lang/String; = "ambientTexture"

.field public static final Bump:J

.field public static final BumpAlias:Ljava/lang/String; = "bumpTexture"

.field public static final Diffuse:J

.field public static final DiffuseAlias:Ljava/lang/String; = "diffuseTexture"

.field public static final Emissive:J

.field public static final EmissiveAlias:Ljava/lang/String; = "emissiveTexture"

.field protected static Mask:J = 0x0L

.field public static final Normal:J

.field public static final NormalAlias:Ljava/lang/String; = "normalTexture"

.field public static final Reflection:J

.field public static final ReflectionAlias:Ljava/lang/String; = "reflectionTexture"

.field public static final Specular:J

.field public static final SpecularAlias:Ljava/lang/String; = "specularTexture"


# instance fields
.field public offsetU:F

.field public offsetV:F

.field public scaleU:F

.field public scaleV:F

.field public final textureDescription:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor",
            "<",
            "Lcom/badlogic/gdx/graphics/Texture;",
            ">;"
        }
    .end annotation
.end field

.field public uvIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 29
    const-string v0, "diffuseTexture"

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->register(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Diffuse:J

    .line 31
    const-string v0, "specularTexture"

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->register(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Specular:J

    .line 33
    const-string v0, "bumpTexture"

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->register(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Bump:J

    .line 35
    const-string v0, "normalTexture"

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->register(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Normal:J

    .line 37
    const-string v0, "ambientTexture"

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->register(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Ambient:J

    .line 39
    const-string v0, "emissiveTexture"

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->register(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Emissive:J

    .line 41
    const-string v0, "reflectionTexture"

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->register(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Reflection:J

    .line 43
    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Diffuse:J

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Specular:J

    or-long/2addr v0, v2

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Bump:J

    or-long/2addr v0, v2

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Normal:J

    or-long/2addr v0, v2

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Ambient:J

    or-long/2addr v0, v2

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Emissive:J

    or-long/2addr v0, v2

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Reflection:J

    or-long/2addr v0, v2

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Mask:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "type"    # J

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/Attribute;-><init>(J)V

    .line 106
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetU:F

    .line 107
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetV:F

    .line 108
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->scaleU:F

    .line 109
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->scaleV:F

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->uvIndex:I

    .line 117
    invoke-static {p1, p2}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->is(J)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Invalid type specified"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->textureDescription:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    .line 119
    return-void
.end method

.method public constructor <init>(JLcom/badlogic/gdx/graphics/Texture;)V
    .locals 1
    .param p1, "type"    # J
    .param p3, "texture"    # Lcom/badlogic/gdx/graphics/Texture;

    .prologue
    .line 142
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(J)V

    .line 143
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->textureDescription:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    iput-object p3, v0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->texture:Lcom/badlogic/gdx/graphics/GLTexture;

    .line 144
    return-void
.end method

.method public constructor <init>(JLcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 1
    .param p1, "type"    # J
    .param p3, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 147
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(J)V

    .line 148
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->set(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 149
    return-void
.end method

.method public constructor <init>(JLcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;)V
    .locals 1
    .param p1, "type"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/Texture;",
            ">(J",
            "Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p3, "textureDescription":Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;, "Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(J)V

    .line 123
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->textureDescription:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->set(Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;)V

    .line 124
    return-void
.end method

.method public constructor <init>(JLcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;FFFF)V
    .locals 11
    .param p1, "type"    # J
    .param p4, "offsetU"    # F
    .param p5, "offsetV"    # F
    .param p6, "scaleU"    # F
    .param p7, "scaleV"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/Texture;",
            ">(J",
            "Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor",
            "<TT;>;FFFF)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p3, "textureDescription":Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;, "Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor<TT;>;"
    const/4 v9, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;FFFFI)V

    .line 139
    return-void
.end method

.method public constructor <init>(JLcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;FFFFI)V
    .locals 1
    .param p1, "type"    # J
    .param p4, "offsetU"    # F
    .param p5, "offsetV"    # F
    .param p6, "scaleU"    # F
    .param p7, "scaleV"    # F
    .param p8, "uvIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/Texture;",
            ">(J",
            "Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor",
            "<TT;>;FFFFI)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p3, "textureDescription":Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;, "Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;)V

    .line 129
    iput p4, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetU:F

    .line 130
    iput p5, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetV:F

    .line 131
    iput p6, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->scaleU:F

    .line 132
    iput p7, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->scaleV:F

    .line 133
    iput p8, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->uvIndex:I

    .line 134
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;)V
    .locals 10
    .param p1, "copyFrom"    # Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    .prologue
    .line 152
    iget-wide v2, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->type:J

    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->textureDescription:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    iget v5, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetU:F

    iget v6, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetV:F

    iget v7, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->scaleU:F

    iget v8, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->scaleV:F

    iget v9, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->uvIndex:I

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;FFFFI)V

    .line 154
    return-void
.end method

.method public static createAmbient(Lcom/badlogic/gdx/graphics/Texture;)Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    .locals 4
    .param p0, "texture"    # Lcom/badlogic/gdx/graphics/Texture;

    .prologue
    .line 82
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Ambient:J

    invoke-direct {v0, v2, v3, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/Texture;)V

    return-object v0
.end method

.method public static createAmbient(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    .locals 4
    .param p0, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 86
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Ambient:J

    invoke-direct {v0, v2, v3, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    return-object v0
.end method

.method public static createBump(Lcom/badlogic/gdx/graphics/Texture;)Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    .locals 4
    .param p0, "texture"    # Lcom/badlogic/gdx/graphics/Texture;

    .prologue
    .line 74
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Bump:J

    invoke-direct {v0, v2, v3, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/Texture;)V

    return-object v0
.end method

.method public static createBump(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    .locals 4
    .param p0, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 78
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Bump:J

    invoke-direct {v0, v2, v3, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    return-object v0
.end method

.method public static createDiffuse(Lcom/badlogic/gdx/graphics/Texture;)Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    .locals 4
    .param p0, "texture"    # Lcom/badlogic/gdx/graphics/Texture;

    .prologue
    .line 50
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Diffuse:J

    invoke-direct {v0, v2, v3, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/Texture;)V

    return-object v0
.end method

.method public static createDiffuse(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    .locals 4
    .param p0, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 54
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Diffuse:J

    invoke-direct {v0, v2, v3, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    return-object v0
.end method

.method public static createEmissive(Lcom/badlogic/gdx/graphics/Texture;)Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    .locals 4
    .param p0, "texture"    # Lcom/badlogic/gdx/graphics/Texture;

    .prologue
    .line 90
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Emissive:J

    invoke-direct {v0, v2, v3, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/Texture;)V

    return-object v0
.end method

.method public static createEmissive(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    .locals 4
    .param p0, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 94
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Emissive:J

    invoke-direct {v0, v2, v3, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    return-object v0
.end method

.method public static createNormal(Lcom/badlogic/gdx/graphics/Texture;)Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    .locals 4
    .param p0, "texture"    # Lcom/badlogic/gdx/graphics/Texture;

    .prologue
    .line 66
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Normal:J

    invoke-direct {v0, v2, v3, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/Texture;)V

    return-object v0
.end method

.method public static createNormal(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    .locals 4
    .param p0, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 70
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Normal:J

    invoke-direct {v0, v2, v3, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    return-object v0
.end method

.method public static createReflection(Lcom/badlogic/gdx/graphics/Texture;)Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    .locals 4
    .param p0, "texture"    # Lcom/badlogic/gdx/graphics/Texture;

    .prologue
    .line 98
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Reflection:J

    invoke-direct {v0, v2, v3, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/Texture;)V

    return-object v0
.end method

.method public static createReflection(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    .locals 4
    .param p0, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 102
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Reflection:J

    invoke-direct {v0, v2, v3, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    return-object v0
.end method

.method public static createSpecular(Lcom/badlogic/gdx/graphics/Texture;)Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    .locals 4
    .param p0, "texture"    # Lcom/badlogic/gdx/graphics/Texture;

    .prologue
    .line 58
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Specular:J

    invoke-direct {v0, v2, v3, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/Texture;)V

    return-object v0
.end method

.method public static createSpecular(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;
    .locals 4
    .param p0, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 62
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Specular:J

    invoke-direct {v0, v2, v3, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    return-object v0
.end method

.method public static final is(J)Z
    .locals 4
    .param p0, "mask"    # J

    .prologue
    .line 46
    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Mask:J

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
    .line 166
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 171
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/Attribute;->hashCode()I

    move-result v0

    .line 172
    .local v0, "result":I
    mul-int/lit16 v1, v0, 0x3df

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->textureDescription:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 173
    mul-int/lit16 v1, v0, 0x3df

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetU:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 174
    mul-int/lit16 v1, v0, 0x3df

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetV:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 175
    mul-int/lit16 v1, v0, 0x3df

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->scaleU:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 176
    mul-int/lit16 v1, v0, 0x3df

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->scaleV:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 177
    mul-int/lit16 v1, v0, 0x3df

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->uvIndex:I

    int-to-float v2, v2

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 178
    return v0
.end method

.method public set(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 2
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->textureDescription:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->texture:Lcom/badlogic/gdx/graphics/GLTexture;

    .line 158
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetU:F

    .line 159
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetV:F

    .line 160
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetU:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->scaleU:F

    .line 161
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->offsetV:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->scaleV:F

    .line 162
    return-void
.end method
