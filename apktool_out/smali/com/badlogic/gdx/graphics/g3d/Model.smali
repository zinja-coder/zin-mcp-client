.class public Lcom/badlogic/gdx/graphics/g3d/Model;
.super Ljava/lang/Object;
.source "Model.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# instance fields
.field public final animations:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Animation;",
            ">;"
        }
    .end annotation
.end field

.field protected final disposables:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/utils/Disposable;",
            ">;"
        }
    .end annotation
.end field

.field public final materials:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/Material;",
            ">;"
        }
    .end annotation
.end field

.field public final meshParts:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;",
            ">;"
        }
    .end annotation
.end field

.field public final meshes:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/Mesh;",
            ">;"
        }
    .end annotation
.end field

.field private nodePartBones:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/model/NodePart;",
            "Lcom/badlogic/gdx/utils/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/math/Matrix4;",
            ">;>;"
        }
    .end annotation
.end field

.field public final nodes:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/model/Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->materials:Lcom/badlogic/gdx/utils/Array;

    .line 75
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->nodes:Lcom/badlogic/gdx/utils/Array;

    .line 77
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->animations:Lcom/badlogic/gdx/utils/Array;

    .line 79
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->meshes:Lcom/badlogic/gdx/utils/Array;

    .line 82
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->meshParts:Lcom/badlogic/gdx/utils/Array;

    .line 84
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->disposables:Lcom/badlogic/gdx/utils/Array;

    .line 161
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->nodePartBones:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 89
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;)V
    .locals 1
    .param p1, "modelData"    # Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;

    .prologue
    .line 95
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider$FileTextureProvider;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider$FileTextureProvider;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/Model;-><init>(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;)V
    .locals 1
    .param p1, "modelData"    # Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;
    .param p2, "textureProvider"    # Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->materials:Lcom/badlogic/gdx/utils/Array;

    .line 75
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->nodes:Lcom/badlogic/gdx/utils/Array;

    .line 77
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->animations:Lcom/badlogic/gdx/utils/Array;

    .line 79
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->meshes:Lcom/badlogic/gdx/utils/Array;

    .line 82
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->meshParts:Lcom/badlogic/gdx/utils/Array;

    .line 84
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->disposables:Lcom/badlogic/gdx/utils/Array;

    .line 161
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->nodePartBones:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/Model;->load(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;)V

    .line 103
    return-void
.end method

.method private convertMaterial(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;)Lcom/badlogic/gdx/graphics/g3d/Material;
    .locals 16
    .param p1, "mtl"    # Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;
    .param p2, "textureProvider"    # Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;

    .prologue
    .line 271
    new-instance v11, Lcom/badlogic/gdx/graphics/g3d/Material;

    invoke-direct {v11}, Lcom/badlogic/gdx/graphics/g3d/Material;-><init>()V

    .line 272
    .local v11, "result":Lcom/badlogic/gdx/graphics/g3d/Material;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->id:Ljava/lang/String;

    iput-object v3, v11, Lcom/badlogic/gdx/graphics/g3d/Material;->id:Ljava/lang/String;

    .line 273
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->ambient:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v3, :cond_0

    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Ambient:J

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->ambient:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v4, v5, v15}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JLcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v11, v3}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 274
    :cond_0
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->diffuse:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v3, :cond_1

    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Diffuse:J

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->diffuse:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v4, v5, v15}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JLcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v11, v3}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 275
    :cond_1
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->specular:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v3, :cond_2

    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Specular:J

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->specular:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v4, v5, v15}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JLcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v11, v3}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 276
    :cond_2
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->emissive:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v3, :cond_3

    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Emissive:J

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->emissive:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v4, v5, v15}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JLcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v11, v3}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 277
    :cond_3
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->reflection:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v3, :cond_4

    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;

    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;->Reflection:J

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->reflection:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v4, v5, v15}, Lcom/badlogic/gdx/graphics/g3d/attributes/ColorAttribute;-><init>(JLcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v11, v3}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 278
    :cond_4
    move-object/from16 v0, p1

    iget v3, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->shininess:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;

    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->Shininess:J

    move-object/from16 v0, p1

    iget v15, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->shininess:F

    invoke-direct {v3, v4, v5, v15}, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;-><init>(JF)V

    invoke-virtual {v11, v3}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 279
    :cond_5
    move-object/from16 v0, p1

    iget v3, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->opacity:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_6

    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;

    const/16 v4, 0x302

    const/16 v5, 0x303

    move-object/from16 v0, p1

    iget v15, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->opacity:F

    invoke-direct {v3, v4, v5, v15}, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;-><init>(IIF)V

    invoke-virtual {v11, v3}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    .line 281
    :cond_6
    new-instance v14, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v14}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    .line 284
    .local v14, "textures":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture;>;"
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->textures:Lcom/badlogic/gdx/utils/Array;

    if-eqz v3, :cond_c

    .line 285
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->textures:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;

    .line 287
    .local v12, "tex":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;
    iget-object v3, v12, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->fileName:Ljava/lang/String;

    invoke-virtual {v14, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 288
    iget-object v3, v12, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->fileName:Ljava/lang/String;

    invoke-virtual {v14, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/badlogic/gdx/graphics/Texture;

    .line 295
    .local v13, "texture":Lcom/badlogic/gdx/graphics/Texture;
    :goto_1
    new-instance v6, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    invoke-direct {v6, v13}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;-><init>(Lcom/badlogic/gdx/graphics/GLTexture;)V

    .line 296
    .local v6, "descriptor":Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;
    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/Texture;->getMinFilter()Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    move-result-object v3

    iput-object v3, v6, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 297
    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/Texture;->getMagFilter()Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    move-result-object v3

    iput-object v3, v6, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 298
    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/Texture;->getUWrap()Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    move-result-object v3

    iput-object v3, v6, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 299
    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/Texture;->getVWrap()Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    move-result-object v3

    iput-object v3, v6, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 301
    iget-object v3, v12, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->uvTranslation:Lcom/badlogic/gdx/math/Vector2;

    if-nez v3, :cond_8

    const/4 v7, 0x0

    .line 302
    .local v7, "offsetU":F
    :goto_2
    iget-object v3, v12, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->uvTranslation:Lcom/badlogic/gdx/math/Vector2;

    if-nez v3, :cond_9

    const/4 v8, 0x0

    .line 303
    .local v8, "offsetV":F
    :goto_3
    iget-object v3, v12, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->uvScaling:Lcom/badlogic/gdx/math/Vector2;

    if-nez v3, :cond_a

    const/high16 v9, 0x3f800000    # 1.0f

    .line 304
    .local v9, "scaleU":F
    :goto_4
    iget-object v3, v12, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->uvScaling:Lcom/badlogic/gdx/math/Vector2;

    if-nez v3, :cond_b

    const/high16 v10, 0x3f800000    # 1.0f

    .line 306
    .local v10, "scaleV":F
    :goto_5
    iget v3, v12, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->usage:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 308
    :pswitch_1
    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Diffuse:J

    invoke-direct/range {v3 .. v10}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;FFFF)V

    invoke-virtual {v11, v3}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    goto :goto_0

    .line 290
    .end local v6    # "descriptor":Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;
    .end local v7    # "offsetU":F
    .end local v8    # "offsetV":F
    .end local v9    # "scaleU":F
    .end local v10    # "scaleV":F
    .end local v13    # "texture":Lcom/badlogic/gdx/graphics/Texture;
    :cond_7
    iget-object v3, v12, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->fileName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;->load(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v13

    .line 291
    .restart local v13    # "texture":Lcom/badlogic/gdx/graphics/Texture;
    iget-object v3, v12, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->fileName:Ljava/lang/String;

    invoke-virtual {v14, v3, v13}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/Model;->disposables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v13}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 301
    .restart local v6    # "descriptor":Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;
    :cond_8
    iget-object v3, v12, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->uvTranslation:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    goto :goto_2

    .line 302
    .restart local v7    # "offsetU":F
    :cond_9
    iget-object v3, v12, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->uvTranslation:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_3

    .line 303
    .restart local v8    # "offsetV":F
    :cond_a
    iget-object v3, v12, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->uvScaling:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    goto :goto_4

    .line 304
    .restart local v9    # "scaleU":F
    :cond_b
    iget-object v3, v12, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->uvScaling:Lcom/badlogic/gdx/math/Vector2;

    iget v10, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_5

    .line 311
    .restart local v10    # "scaleV":F
    :pswitch_2
    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Specular:J

    invoke-direct/range {v3 .. v10}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;FFFF)V

    invoke-virtual {v11, v3}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    goto/16 :goto_0

    .line 314
    :pswitch_3
    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Bump:J

    invoke-direct/range {v3 .. v10}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;FFFF)V

    invoke-virtual {v11, v3}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    goto/16 :goto_0

    .line 317
    :pswitch_4
    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Normal:J

    invoke-direct/range {v3 .. v10}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;FFFF)V

    invoke-virtual {v11, v3}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    goto/16 :goto_0

    .line 320
    :pswitch_5
    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Ambient:J

    invoke-direct/range {v3 .. v10}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;FFFF)V

    invoke-virtual {v11, v3}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    goto/16 :goto_0

    .line 323
    :pswitch_6
    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Emissive:J

    invoke-direct/range {v3 .. v10}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;FFFF)V

    invoke-virtual {v11, v3}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    goto/16 :goto_0

    .line 326
    :pswitch_7
    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Reflection:J

    invoke-direct/range {v3 .. v10}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;-><init>(JLcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;FFFF)V

    invoke-virtual {v11, v3}, Lcom/badlogic/gdx/graphics/g3d/Material;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    goto/16 :goto_0

    .line 332
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "descriptor":Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;
    .end local v7    # "offsetU":F
    .end local v8    # "offsetV":F
    .end local v9    # "scaleU":F
    .end local v10    # "scaleV":F
    .end local v12    # "tex":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;
    .end local v13    # "texture":Lcom/badlogic/gdx/graphics/Texture;
    :cond_c
    return-object v11

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_6
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method private convertMesh(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;)V
    .locals 14
    .param p1, "modelMesh"    # Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;

    .prologue
    const/4 v13, 0x0

    .line 236
    const/4 v6, 0x0

    .line 237
    .local v6, "numIndices":I
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;->parts:[Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;

    .local v0, "arr$":[Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v9, v0, v2

    .line 238
    .local v9, "part":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;
    iget-object v10, v9, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;->indices:[S

    array-length v10, v10

    add-int/2addr v6, v10

    .line 237
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 240
    .end local v9    # "part":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;
    :cond_0
    new-instance v1, Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget-object v10, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    invoke-direct {v1, v10}, Lcom/badlogic/gdx/graphics/VertexAttributes;-><init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    .line 241
    .local v1, "attributes":Lcom/badlogic/gdx/graphics/VertexAttributes;
    iget-object v10, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;->vertices:[F

    array-length v10, v10

    iget v11, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/lit8 v11, v11, 0x4

    div-int v7, v10, v11

    .line 243
    .local v7, "numVertices":I
    new-instance v4, Lcom/badlogic/gdx/graphics/Mesh;

    const/4 v10, 0x1

    invoke-direct {v4, v10, v7, v6, v1}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZIILcom/badlogic/gdx/graphics/VertexAttributes;)V

    .line 244
    .local v4, "mesh":Lcom/badlogic/gdx/graphics/Mesh;
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->meshes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v10, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 245
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->disposables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v10, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 247
    iget-object v10, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;->vertices:[F

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v11

    iget-object v12, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;->vertices:[F

    array-length v12, v12

    invoke-static {v10, v11, v12, v13}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FLjava/nio/Buffer;II)V

    .line 248
    const/4 v8, 0x0

    .line 249
    .local v8, "offset":I
    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Mesh;->getIndicesBuffer()Ljava/nio/ShortBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 250
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;->parts:[Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v9, v0, v2

    .line 251
    .restart local v9    # "part":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;
    new-instance v5, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    invoke-direct {v5}, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;-><init>()V

    .line 252
    .local v5, "meshPart":Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    iget-object v10, v9, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;->id:Ljava/lang/String;

    iput-object v10, v5, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->id:Ljava/lang/String;

    .line 253
    iget v10, v9, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;->primitiveType:I

    iput v10, v5, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->primitiveType:I

    .line 254
    iput v8, v5, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->indexOffset:I

    .line 255
    iget-object v10, v9, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;->indices:[S

    array-length v10, v10

    iput v10, v5, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->numVertices:I

    .line 256
    iput-object v4, v5, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    .line 257
    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Mesh;->getIndicesBuffer()Ljava/nio/ShortBuffer;

    move-result-object v10

    iget-object v11, v9, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;->indices:[S

    invoke-virtual {v10, v11}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 258
    iget v10, v5, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->numVertices:I

    add-int/2addr v8, v10

    .line 259
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->meshParts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v10, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 250
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 261
    .end local v5    # "meshPart":Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    .end local v9    # "part":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;
    :cond_1
    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Mesh;->getIndicesBuffer()Ljava/nio/ShortBuffer;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 262
    return-void
.end method

.method private load(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;)V
    .locals 1
    .param p1, "modelData"    # Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;
    .param p2, "textureProvider"    # Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;

    .prologue
    .line 106
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->meshes:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/Model;->loadMeshes(Ljava/lang/Iterable;)V

    .line 107
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/graphics/g3d/Model;->loadMaterials(Ljava/lang/Iterable;Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;)V

    .line 108
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/Model;->loadNodes(Ljava/lang/Iterable;)V

    .line 109
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->animations:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/Model;->loadAnimations(Ljava/lang/Iterable;)V

    .line 110
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/Model;->calculateTransforms()V

    .line 111
    return-void
.end method

.method private loadAnimations(Ljava/lang/Iterable;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "modelAnimations":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;>;"
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;

    .line 115
    .local v0, "anim":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;
    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g3d/model/Animation;-><init>()V

    .line 116
    .local v1, "animation":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    iget-object v10, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;->id:Ljava/lang/String;

    iput-object v10, v1, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->id:Ljava/lang/String;

    .line 117
    iget-object v10, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;->nodeAnimations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v10}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;

    .line 118
    .local v7, "nanim":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;
    iget-object v10, v7, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->nodeId:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/badlogic/gdx/graphics/g3d/Model;->getNode(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v8

    .line 119
    .local v8, "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    if-eqz v8, :cond_1

    .line 120
    new-instance v9, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;

    invoke-direct {v9}, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;-><init>()V

    .line 121
    .local v9, "nodeAnim":Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;
    iput-object v8, v9, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->node:Lcom/badlogic/gdx/graphics/g3d/model/Node;

    .line 123
    iget-object v10, v7, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    if-eqz v10, :cond_4

    .line 124
    new-instance v10, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v10}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v10, v9, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    .line 125
    iget-object v10, v9, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    iget-object v11, v7, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    iget v11, v11, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 126
    iget-object v10, v7, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v10}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;

    .line 127
    .local v6, "kf":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe<Lcom/badlogic/gdx/math/Vector3;>;"
    iget v10, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->keytime:F

    iget v11, v1, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->duration:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_2

    iget v10, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->keytime:F

    iput v10, v1, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->duration:F

    .line 128
    :cond_2
    iget-object v11, v9, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    new-instance v12, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    iget v13, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->keytime:F

    new-instance v14, Lcom/badlogic/gdx/math/Vector3;

    iget-object v10, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->value:Ljava/lang/Object;

    if-nez v10, :cond_3

    iget-object v10, v8, Lcom/badlogic/gdx/graphics/g3d/model/Node;->translation:Lcom/badlogic/gdx/math/Vector3;

    :goto_3
    invoke-direct {v14, v10}, Lcom/badlogic/gdx/math/Vector3;-><init>(Lcom/badlogic/gdx/math/Vector3;)V

    invoke-direct {v12, v13, v14}, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;-><init>(FLjava/lang/Object;)V

    invoke-virtual {v11, v12}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v10, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->value:Ljava/lang/Object;

    check-cast v10, Lcom/badlogic/gdx/math/Vector3;

    goto :goto_3

    .line 133
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "kf":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe<Lcom/badlogic/gdx/math/Vector3;>;"
    :cond_4
    iget-object v10, v7, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    if-eqz v10, :cond_7

    .line 134
    new-instance v10, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v10}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v10, v9, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    .line 135
    iget-object v10, v9, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    iget-object v11, v7, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    iget v11, v11, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 136
    iget-object v10, v7, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v10}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;

    .line 137
    .local v5, "kf":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe<Lcom/badlogic/gdx/math/Quaternion;>;"
    iget v10, v5, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->keytime:F

    iget v11, v1, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->duration:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_5

    iget v10, v5, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->keytime:F

    iput v10, v1, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->duration:F

    .line 138
    :cond_5
    iget-object v11, v9, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    new-instance v12, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    iget v13, v5, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->keytime:F

    new-instance v14, Lcom/badlogic/gdx/math/Quaternion;

    iget-object v10, v5, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->value:Ljava/lang/Object;

    if-nez v10, :cond_6

    iget-object v10, v8, Lcom/badlogic/gdx/graphics/g3d/model/Node;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    :goto_5
    invoke-direct {v14, v10}, Lcom/badlogic/gdx/math/Quaternion;-><init>(Lcom/badlogic/gdx/math/Quaternion;)V

    invoke-direct {v12, v13, v14}, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;-><init>(FLjava/lang/Object;)V

    invoke-virtual {v11, v12}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    iget-object v10, v5, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->value:Ljava/lang/Object;

    check-cast v10, Lcom/badlogic/gdx/math/Quaternion;

    goto :goto_5

    .line 143
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "kf":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe<Lcom/badlogic/gdx/math/Quaternion;>;"
    :cond_7
    iget-object v10, v7, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    if-eqz v10, :cond_a

    .line 144
    new-instance v10, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v10}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v10, v9, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    .line 145
    iget-object v10, v9, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    iget-object v11, v7, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    iget v11, v11, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 146
    iget-object v10, v7, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v10}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;

    .line 147
    .restart local v6    # "kf":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe<Lcom/badlogic/gdx/math/Vector3;>;"
    iget v10, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->keytime:F

    iget v11, v1, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->duration:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_8

    iget v10, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->keytime:F

    iput v10, v1, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->duration:F

    .line 148
    :cond_8
    iget-object v11, v9, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    new-instance v12, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;

    iget v13, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->keytime:F

    new-instance v14, Lcom/badlogic/gdx/math/Vector3;

    iget-object v10, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->value:Ljava/lang/Object;

    if-nez v10, :cond_9

    iget-object v10, v8, Lcom/badlogic/gdx/graphics/g3d/model/Node;->scale:Lcom/badlogic/gdx/math/Vector3;

    :goto_7
    invoke-direct {v14, v10}, Lcom/badlogic/gdx/math/Vector3;-><init>(Lcom/badlogic/gdx/math/Vector3;)V

    invoke-direct {v12, v13, v14}, Lcom/badlogic/gdx/graphics/g3d/model/NodeKeyframe;-><init>(FLjava/lang/Object;)V

    invoke-virtual {v11, v12}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_6

    :cond_9
    iget-object v10, v6, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;->value:Ljava/lang/Object;

    check-cast v10, Lcom/badlogic/gdx/math/Vector3;

    goto :goto_7

    .line 153
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "kf":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe;, "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeKeyframe<Lcom/badlogic/gdx/math/Vector3;>;"
    :cond_a
    iget-object v10, v9, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    if-eqz v10, :cond_b

    iget-object v10, v9, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->translation:Lcom/badlogic/gdx/utils/Array;

    iget v10, v10, Lcom/badlogic/gdx/utils/Array;->size:I

    if-gtz v10, :cond_d

    :cond_b
    iget-object v10, v9, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    if-eqz v10, :cond_c

    iget-object v10, v9, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->rotation:Lcom/badlogic/gdx/utils/Array;

    iget v10, v10, Lcom/badlogic/gdx/utils/Array;->size:I

    if-gtz v10, :cond_d

    :cond_c
    iget-object v10, v9, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    if-eqz v10, :cond_1

    iget-object v10, v9, Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;->scaling:Lcom/badlogic/gdx/utils/Array;

    iget v10, v10, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v10, :cond_1

    .line 155
    :cond_d
    iget-object v10, v1, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->nodeAnimations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v10, v9}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 157
    .end local v7    # "nanim":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodeAnimation;
    .end local v8    # "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .end local v9    # "nodeAnim":Lcom/badlogic/gdx/graphics/g3d/model/NodeAnimation;
    :cond_e
    iget-object v10, v1, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->nodeAnimations:Lcom/badlogic/gdx/utils/Array;

    iget v10, v10, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v10, :cond_0

    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->animations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v10, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 159
    .end local v0    # "anim":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelAnimation;
    .end local v1    # "animation":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    :cond_f
    return-void
.end method

.method private loadMaterials(Ljava/lang/Iterable;Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;)V
    .locals 4
    .param p2, "textureProvider"    # Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;",
            ">;",
            "Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;",
            ")V"
        }
    .end annotation

    .prologue
    .line 265
    .local p1, "modelMaterials":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;

    .line 266
    .local v1, "mtl":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, v1, p2}, Lcom/badlogic/gdx/graphics/g3d/Model;->convertMaterial(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;)Lcom/badlogic/gdx/graphics/g3d/Material;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 268
    .end local v1    # "mtl":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;
    :cond_0
    return-void
.end method

.method private loadMeshes(Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 230
    .local p1, "meshes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;

    .line 231
    .local v1, "mesh":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;
    invoke-direct {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/Model;->convertMesh(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;)V

    goto :goto_0

    .line 233
    .end local v1    # "mesh":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;
    :cond_0
    return-void
.end method

.method private loadNode(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;)Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .locals 16
    .param p1, "modelNode"    # Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;

    .prologue
    .line 178
    new-instance v10, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-direct {v10}, Lcom/badlogic/gdx/graphics/g3d/model/Node;-><init>()V

    .line 179
    .local v10, "node":Lcom/badlogic/gdx/graphics/g3d/model/Node;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->id:Ljava/lang/String;

    iput-object v13, v10, Lcom/badlogic/gdx/graphics/g3d/model/Node;->id:Ljava/lang/String;

    .line 181
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->translation:Lcom/badlogic/gdx/math/Vector3;

    if-eqz v13, :cond_0

    iget-object v13, v10, Lcom/badlogic/gdx/graphics/g3d/model/Node;->translation:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->translation:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v13, v14}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 182
    :cond_0
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    if-eqz v13, :cond_1

    iget-object v13, v10, Lcom/badlogic/gdx/graphics/g3d/model/Node;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v13, v14}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 183
    :cond_1
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->scale:Lcom/badlogic/gdx/math/Vector3;

    if-eqz v13, :cond_2

    iget-object v13, v10, Lcom/badlogic/gdx/graphics/g3d/model/Node;->scale:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->scale:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v13, v14}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 185
    :cond_2
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->parts:[Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;

    if-eqz v13, :cond_a

    .line 186
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->parts:[Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;

    .local v1, "arr$":[Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_a

    aget-object v9, v1, v4

    .line 187
    .local v9, "modelNodePart":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;
    const/4 v8, 0x0

    .line 188
    .local v8, "meshPart":Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    const/4 v7, 0x0

    .line 190
    .local v7, "meshMaterial":Lcom/badlogic/gdx/graphics/g3d/Material;
    iget-object v13, v9, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;->meshPartId:Ljava/lang/String;

    if-eqz v13, :cond_4

    .line 191
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/graphics/g3d/Model;->meshParts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v13}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v4    # "i$":I
    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    .line 192
    .local v12, "part":Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    iget-object v13, v9, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;->meshPartId:Ljava/lang/String;

    iget-object v14, v12, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->id:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 193
    move-object v8, v12

    .line 199
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v12    # "part":Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    :cond_4
    iget-object v13, v9, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;->materialId:Ljava/lang/String;

    if-eqz v13, :cond_6

    .line 200
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/graphics/g3d/Model;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v13}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/g3d/Material;

    .line 201
    .local v6, "material":Lcom/badlogic/gdx/graphics/g3d/Material;
    iget-object v13, v9, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;->materialId:Ljava/lang/String;

    iget-object v14, v6, Lcom/badlogic/gdx/graphics/g3d/Material;->id:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 202
    move-object v7, v6

    .line 208
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "material":Lcom/badlogic/gdx/graphics/g3d/Material;
    :cond_6
    if-eqz v8, :cond_7

    if-nez v7, :cond_8

    :cond_7
    new-instance v13, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Invalid node: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v10, Lcom/badlogic/gdx/graphics/g3d/model/Node;->id:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 210
    :cond_8
    if-eqz v8, :cond_9

    if-eqz v7, :cond_9

    .line 211
    new-instance v11, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    invoke-direct {v11}, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;-><init>()V

    .line 212
    .local v11, "nodePart":Lcom/badlogic/gdx/graphics/g3d/model/NodePart;
    iput-object v8, v11, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    .line 213
    iput-object v7, v11, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    .line 214
    iget-object v13, v10, Lcom/badlogic/gdx/graphics/g3d/model/Node;->parts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v13, v11}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 215
    iget-object v13, v9, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;->bones:Lcom/badlogic/gdx/utils/ArrayMap;

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/graphics/g3d/Model;->nodePartBones:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v14, v9, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;->bones:Lcom/badlogic/gdx/utils/ArrayMap;

    invoke-virtual {v13, v11, v14}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .end local v11    # "nodePart":Lcom/badlogic/gdx/graphics/g3d/model/NodePart;
    :cond_9
    add-int/lit8 v3, v4, 0x1

    .local v3, "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto/16 :goto_0

    .line 220
    .end local v1    # "arr$":[Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "meshMaterial":Lcom/badlogic/gdx/graphics/g3d/Material;
    .end local v8    # "meshPart":Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;
    .end local v9    # "modelNodePart":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;
    :cond_a
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->children:[Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;

    if-eqz v13, :cond_b

    .line 221
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->children:[Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;

    .local v1, "arr$":[Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;
    array-length v5, v1

    .restart local v5    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v5, :cond_b

    aget-object v2, v1, v3

    .line 222
    .local v2, "child":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/graphics/g3d/Model;->loadNode(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->addChild(Lcom/badlogic/gdx/graphics/g3d/model/Node;)I

    .line 221
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 226
    .end local v1    # "arr$":[Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;
    .end local v2    # "child":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    :cond_b
    return-object v10
.end method

.method private loadNodes(Ljava/lang/Iterable;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "modelNodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;>;"
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->nodePartBones:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    .line 165
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;

    .line 166
    .local v4, "node":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, v4}, Lcom/badlogic/gdx/graphics/g3d/Model;->loadNode(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 168
    .end local v4    # "node":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;
    :cond_0
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->nodePartBones:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/ObjectMap;->entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    .line 169
    .local v1, "e":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Lcom/badlogic/gdx/graphics/g3d/model/NodePart;Lcom/badlogic/gdx/utils/ArrayMap<Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;>;>;"
    iget-object v5, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v5, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    if-nez v5, :cond_2

    .line 170
    iget-object v5, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v5, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    new-instance v6, Lcom/badlogic/gdx/utils/ArrayMap;

    const-class v7, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    const-class v8, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v6, v7, v8}, Lcom/badlogic/gdx/utils/ArrayMap;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    iput-object v6, v5, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    .line 171
    :cond_2
    iget-object v5, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v5, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/ArrayMap;->clear()V

    .line 172
    iget-object v5, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast v5, Lcom/badlogic/gdx/utils/ArrayMap;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/ArrayMap;->entries()Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    .line 173
    .local v0, "b":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;>;"
    iget-object v5, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v5, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;

    iget-object v6, v5, Lcom/badlogic/gdx/graphics/g3d/model/NodePart;->invBoneBindTransforms:Lcom/badlogic/gdx/utils/ArrayMap;

    iget-object v5, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/graphics/g3d/Model;->getNode(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v7

    new-instance v8, Lcom/badlogic/gdx/math/Matrix4;

    iget-object v5, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast v5, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v8, v5}, Lcom/badlogic/gdx/math/Matrix4;-><init>(Lcom/badlogic/gdx/math/Matrix4;)V

    invoke-virtual {v8}, Lcom/badlogic/gdx/math/Matrix4;->inv()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Lcom/badlogic/gdx/utils/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)I

    goto :goto_1

    .line 175
    .end local v0    # "b":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;>;"
    .end local v1    # "e":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Lcom/badlogic/gdx/graphics/g3d/model/NodePart;Lcom/badlogic/gdx/utils/ArrayMap<Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;>;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    return-void
.end method


# virtual methods
.method public calculateBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 1
    .param p1, "out"    # Lcom/badlogic/gdx/math/collision/BoundingBox;

    .prologue
    .line 375
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->inf()Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 376
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/Model;->extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public calculateTransforms()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 362
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->nodes:Lcom/badlogic/gdx/utils/Array;

    iget v1, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 363
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 364
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->calculateTransforms(Z)V

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 366
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 367
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->calculateBoneTransforms(Z)V

    .line 366
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 369
    :cond_1
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 349
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->disposables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Disposable;

    .line 350
    .local v0, "disposable":Lcom/badlogic/gdx/utils/Disposable;
    invoke-interface {v0}, Lcom/badlogic/gdx/utils/Disposable;->dispose()V

    goto :goto_0

    .line 352
    .end local v0    # "disposable":Lcom/badlogic/gdx/utils/Disposable;
    :cond_0
    return-void
.end method

.method public extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 3
    .param p1, "out"    # Lcom/badlogic/gdx/math/collision/BoundingBox;

    .prologue
    .line 384
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->nodes:Lcom/badlogic/gdx/utils/Array;

    iget v1, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 385
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 386
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/model/Node;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->extendBoundingBox(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 385
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 387
    :cond_0
    return-object p1
.end method

.method public getAnimation(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 393
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/Model;->getAnimation(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    move-result-object v0

    return-object v0
.end method

.method public getAnimation(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "ignoreCase"    # Z

    .prologue
    .line 400
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->animations:Lcom/badlogic/gdx/utils/Array;

    iget v2, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 402
    .local v2, "n":I
    if-eqz p2, :cond_2

    .line 403
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 404
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->animations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    .local v0, "animation":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->id:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 409
    .end local v0    # "animation":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    :cond_0
    :goto_1
    return-object v0

    .line 403
    .restart local v0    # "animation":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 406
    .end local v0    # "animation":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v2, :cond_3

    .line 407
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->animations:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    .restart local v0    # "animation":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->id:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 406
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 409
    .end local v0    # "animation":Lcom/badlogic/gdx/graphics/g3d/model/Animation;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getManagedDisposables()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/badlogic/gdx/utils/Disposable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 344
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->disposables:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getMaterial(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/Material;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 415
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/Model;->getMaterial(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/g3d/Material;

    move-result-object v0

    return-object v0
.end method

.method public getMaterial(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/g3d/Material;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "ignoreCase"    # Z

    .prologue
    .line 422
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->materials:Lcom/badlogic/gdx/utils/Array;

    iget v2, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 424
    .local v2, "n":I
    if-eqz p2, :cond_2

    .line 425
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 426
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/Material;

    .local v1, "material":Lcom/badlogic/gdx/graphics/g3d/Material;
    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g3d/Material;->id:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 431
    .end local v1    # "material":Lcom/badlogic/gdx/graphics/g3d/Material;
    :cond_0
    :goto_1
    return-object v1

    .line 425
    .restart local v1    # "material":Lcom/badlogic/gdx/graphics/g3d/Material;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 428
    .end local v0    # "i":I
    .end local v1    # "material":Lcom/badlogic/gdx/graphics/g3d/Material;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v2, :cond_3

    .line 429
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->materials:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/Material;

    .restart local v1    # "material":Lcom/badlogic/gdx/graphics/g3d/Material;
    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g3d/Material;->id:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 428
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 431
    .end local v1    # "material":Lcom/badlogic/gdx/graphics/g3d/Material;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getNode(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 437
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/Model;->getNode(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v0

    return-object v0
.end method

.method public getNode(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "recursive"    # Z

    .prologue
    .line 444
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/Model;->getNode(Ljava/lang/String;ZZ)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v0

    return-object v0
.end method

.method public getNode(Ljava/lang/String;ZZ)Lcom/badlogic/gdx/graphics/g3d/model/Node;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "recursive"    # Z
    .param p3, "ignoreCase"    # Z

    .prologue
    .line 452
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->nodes:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/model/Node;->getNode(Lcom/badlogic/gdx/utils/Array;Ljava/lang/String;ZZ)Lcom/badlogic/gdx/graphics/g3d/model/Node;

    move-result-object v0

    return-object v0
.end method

.method public manageDisposable(Lcom/badlogic/gdx/utils/Disposable;)V
    .locals 2
    .param p1, "disposable"    # Lcom/badlogic/gdx/utils/Disposable;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->disposables:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Model;->disposables:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 340
    :cond_0
    return-void
.end method
