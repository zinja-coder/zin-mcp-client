.class public Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;
.super Ljava/lang/Object;
.source "TextureDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/badlogic/gdx/graphics/GLTexture;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field public minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field public texture:Lcom/badlogic/gdx/graphics/GLTexture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

.field public vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;, "Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->texture:Lcom/badlogic/gdx/graphics/GLTexture;

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/GLTexture;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;, "Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor<TT;>;"
    .local p1, "texture":Lcom/badlogic/gdx/graphics/GLTexture;, "TT;"
    const/4 v2, 0x0

    .line 37
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;-><init>(Lcom/badlogic/gdx/graphics/GLTexture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/GLTexture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V
    .locals 1
    .param p2, "minFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p3, "magFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p4, "uWrap"    # Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .param p5, "vWrap"    # Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/badlogic/gdx/graphics/Texture$TextureFilter;",
            "Lcom/badlogic/gdx/graphics/Texture$TextureFilter;",
            "Lcom/badlogic/gdx/graphics/Texture$TextureWrap;",
            "Lcom/badlogic/gdx/graphics/Texture$TextureWrap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;, "Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor<TT;>;"
    .local p1, "texture":Lcom/badlogic/gdx/graphics/GLTexture;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->texture:Lcom/badlogic/gdx/graphics/GLTexture;

    .line 33
    invoke-virtual/range {p0 .. p5}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->set(Lcom/badlogic/gdx/graphics/GLTexture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    .line 34
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;, "Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 62
    if-nez p1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v2

    .line 63
    :cond_1
    if-ne p1, p0, :cond_2

    move v2, v1

    goto :goto_0

    .line 64
    :cond_2
    instance-of v3, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 65
    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    .line 66
    .local v0, "other":Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;, "Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor<*>;"
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->texture:Lcom/badlogic/gdx/graphics/GLTexture;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->texture:Lcom/badlogic/gdx/graphics/GLTexture;

    if-ne v3, v4, :cond_3

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    if-ne v3, v4, :cond_3

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    if-ne v3, v4, :cond_3

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    if-ne v3, v4, :cond_3

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    if-ne v3, v4, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public set(Lcom/badlogic/gdx/graphics/GLTexture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V
    .locals 0
    .param p2, "minFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p3, "magFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p4, "uWrap"    # Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .param p5, "vWrap"    # Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/badlogic/gdx/graphics/Texture$TextureFilter;",
            "Lcom/badlogic/gdx/graphics/Texture$TextureFilter;",
            "Lcom/badlogic/gdx/graphics/Texture$TextureWrap;",
            "Lcom/badlogic/gdx/graphics/Texture$TextureWrap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;, "Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor<TT;>;"
    .local p1, "texture":Lcom/badlogic/gdx/graphics/GLTexture;, "TT;"
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->texture:Lcom/badlogic/gdx/graphics/GLTexture;

    .line 46
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 47
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 48
    iput-object p4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 49
    iput-object p5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 50
    return-void
.end method

.method public set(Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:TT;>(",
            "Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;, "Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor<TT;>;"
    .local p1, "other":Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;, "Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor<TV;>;"
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->texture:Lcom/badlogic/gdx/graphics/GLTexture;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->texture:Lcom/badlogic/gdx/graphics/GLTexture;

    .line 54
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 55
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 56
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 57
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 58
    return-void
.end method
