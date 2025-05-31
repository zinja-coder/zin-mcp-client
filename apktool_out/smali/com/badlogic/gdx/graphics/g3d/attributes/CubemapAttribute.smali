.class public Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;
.super Lcom/badlogic/gdx/graphics/g3d/Attribute;
.source "CubemapAttribute.java"


# static fields
.field public static final EnvironmentMap:J

.field public static final EnvironmentMapAlias:Ljava/lang/String; = "environmentMapTexture"

.field protected static Mask:J


# instance fields
.field public final textureDescription:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor",
            "<",
            "Lcom/badlogic/gdx/graphics/Cubemap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    const-string v0, "environmentMapTexture"

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;->register(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;->EnvironmentMap:J

    .line 33
    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;->EnvironmentMap:J

    sput-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;->Mask:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "type"    # J

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/Attribute;-><init>(J)V

    .line 43
    invoke-static {p1, p2}, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;->is(J)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Invalid type specified"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;->textureDescription:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    .line 45
    return-void
.end method

.method public constructor <init>(JLcom/badlogic/gdx/graphics/Cubemap;)V
    .locals 1
    .param p1, "type"    # J
    .param p3, "texture"    # Lcom/badlogic/gdx/graphics/Cubemap;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;-><init>(J)V

    .line 54
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;->textureDescription:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    iput-object p3, v0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->texture:Lcom/badlogic/gdx/graphics/GLTexture;

    .line 55
    return-void
.end method

.method public constructor <init>(JLcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;)V
    .locals 1
    .param p1, "type"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/Cubemap;",
            ">(J",
            "Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p3, "textureDescription":Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;, "Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;-><init>(J)V

    .line 49
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;->textureDescription:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->set(Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;)V
    .locals 3
    .param p1, "copyFrom"    # Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;

    .prologue
    .line 58
    iget-wide v0, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;->type:J

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;->textureDescription:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;-><init>(JLcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;)V

    .line 59
    return-void
.end method

.method public static final is(J)Z
    .locals 4
    .param p0, "mask"    # J

    .prologue
    .line 36
    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;->Mask:J

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
    .line 63
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;-><init>(Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 68
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/Attribute;->hashCode()I

    move-result v0

    .line 69
    .local v0, "result":I
    mul-int/lit16 v1, v0, 0x3c7

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/attributes/CubemapAttribute;->textureDescription:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 70
    return v0
.end method
