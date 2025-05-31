.class public Lcom/badlogic/gdx/graphics/g3d/Environment;
.super Lcom/badlogic/gdx/graphics/g3d/Attributes;
.source "Environment.java"


# instance fields
.field public final directionalLights:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;",
            ">;"
        }
    .end annotation
.end field

.field public final pointLights:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;",
            ">;"
        }
    .end annotation
.end field

.field public shadowMap:Lcom/badlogic/gdx/graphics/g3d/environment/ShadowMap;

.field public final spotLights:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;-><init>()V

    .line 30
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Environment;->directionalLights:Lcom/badlogic/gdx/utils/Array;

    .line 31
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Environment;->pointLights:Lcom/badlogic/gdx/utils/Array;

    .line 32
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Environment;->spotLights:Lcom/badlogic/gdx/utils/Array;

    .line 35
    return-void
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;
    .locals 2
    .param p1, "light"    # Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;

    .prologue
    .line 50
    instance-of v0, p1, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Environment;->directionalLights:Lcom/badlogic/gdx/utils/Array;

    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    .end local p1    # "light":Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 58
    :goto_0
    return-object p0

    .line 52
    .restart local p1    # "light":Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;
    :cond_0
    instance-of v0, p1, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Environment;->pointLights:Lcom/badlogic/gdx/utils/Array;

    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    .end local p1    # "light":Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 54
    .restart local p1    # "light":Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;
    :cond_1
    instance-of v0, p1, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    if-eqz v0, :cond_2

    .line 55
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Environment;->spotLights:Lcom/badlogic/gdx/utils/Array;

    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    .end local p1    # "light":Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 57
    .restart local p1    # "light":Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;
    :cond_2
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Unknown light type"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public add(Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/graphics/g3d/Environment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;",
            ">;)",
            "Lcom/badlogic/gdx/graphics/g3d/Environment;"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "lights":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;>;"
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;

    .line 45
    .local v1, "light":Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/Environment;->add(Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;

    goto :goto_0

    .line 46
    .end local v1    # "light":Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;
    :cond_0
    return-object p0
.end method

.method public varargs add([Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;
    .locals 4
    .param p1, "lights"    # [Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;

    .prologue
    .line 38
    move-object v0, p1

    .local v0, "arr$":[Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 39
    .local v3, "light":Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g3d/Environment;->add(Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;

    .line 38
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 40
    .end local v3    # "light":Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;
    :cond_0
    return-object p0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->clear()V

    .line 88
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Environment;->directionalLights:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 89
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Environment;->pointLights:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 90
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Environment;->spotLights:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 91
    return-void
.end method

.method public remove(Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;
    .locals 2
    .param p1, "light"    # Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;

    .prologue
    const/4 v1, 0x0

    .line 74
    instance-of v0, p1, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Environment;->directionalLights:Lcom/badlogic/gdx/utils/Array;

    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    .end local p1    # "light":Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;
    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 82
    :goto_0
    return-object p0

    .line 76
    .restart local p1    # "light":Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;
    :cond_0
    instance-of v0, p1, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Environment;->pointLights:Lcom/badlogic/gdx/utils/Array;

    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    .end local p1    # "light":Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;
    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    goto :goto_0

    .line 78
    .restart local p1    # "light":Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;
    :cond_1
    instance-of v0, p1, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Environment;->spotLights:Lcom/badlogic/gdx/utils/Array;

    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    .end local p1    # "light":Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;
    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    goto :goto_0

    .line 81
    .restart local p1    # "light":Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;
    :cond_2
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Unknown light type"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/graphics/g3d/Environment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;",
            ">;)",
            "Lcom/badlogic/gdx/graphics/g3d/Environment;"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "lights":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;>;"
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;

    .line 69
    .local v1, "light":Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g3d/Environment;->remove(Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;

    goto :goto_0

    .line 70
    .end local v1    # "light":Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;
    :cond_0
    return-object p0
.end method

.method public varargs remove([Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;
    .locals 4
    .param p1, "lights"    # [Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;

    .prologue
    .line 62
    move-object v0, p1

    .local v0, "arr$":[Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 63
    .local v3, "light":Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g3d/Environment;->remove(Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;)Lcom/badlogic/gdx/graphics/g3d/Environment;

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    .end local v3    # "light":Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;
    :cond_0
    return-object p0
.end method
