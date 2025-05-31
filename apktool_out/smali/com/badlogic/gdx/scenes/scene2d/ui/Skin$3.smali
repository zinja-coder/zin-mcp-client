.class Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$3;
.super Lcom/badlogic/gdx/utils/Json$ReadOnlySerializer;
.source "Skin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getJsonLoader(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/Json;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/Json$ReadOnlySerializer",
        "<",
        "Lcom/badlogic/gdx/graphics/g2d/BitmapFont;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

.field final synthetic val$skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

.field final synthetic val$skinFile:Lcom/badlogic/gdx/files/FileHandle;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$3;->val$skinFile:Lcom/badlogic/gdx/files/FileHandle;

    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$3;->val$skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Json$ReadOnlySerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .locals 13
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;
    .param p2, "jsonData"    # Lcom/badlogic/gdx/utils/JsonValue;
    .param p3, "type"    # Ljava/lang/Class;

    .prologue
    .line 439
    const-string v10, "file"

    const-class v11, Ljava/lang/String;

    invoke-virtual {p1, v10, v11, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 440
    .local v6, "path":Ljava/lang/String;
    const-string v10, "scaledSize"

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v12, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {p1, v10, v11, v12, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 441
    .local v9, "scaledSize":I
    const-string v10, "flip"

    const-class v11, Ljava/lang/Boolean;

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {p1, v10, v11, v12, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 442
    .local v1, "flip":Ljava/lang/Boolean;
    const-string v10, "markupEnabled"

    const-class v11, Ljava/lang/Boolean;

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {p1, v10, v11, v12, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .line 444
    .local v5, "markupEnabled":Ljava/lang/Boolean;
    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$3;->val$skinFile:Lcom/badlogic/gdx/files/FileHandle;

    invoke-virtual {v10}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    .line 445
    .local v3, "fontFile":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    sget-object v10, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v10, v6}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    .line 446
    :cond_0
    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    new-instance v10, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Font file not found: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 449
    :cond_1
    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->nameWithoutExtension()Ljava/lang/String;

    move-result-object v8

    .line 452
    .local v8, "regionName":Ljava/lang/String;
    :try_start_0
    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$3;->val$skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-class v11, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v10, v8, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->optional(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 453
    .local v7, "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    if-eqz v7, :cond_3

    .line 454
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-direct {v2, v3, v7, v10}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Z)V

    .line 462
    .local v2, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    :goto_0
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v2, v10}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setMarkupEnabled(Z)V

    .line 464
    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    int-to-float v10, v9

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getCapHeight()F

    move-result v11

    div-float/2addr v10, v11

    invoke-virtual {v2, v10}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setScale(F)V

    .line 465
    :cond_2
    return-object v2

    .line 456
    .end local v2    # "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    :cond_3
    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".png"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    .line 457
    .local v4, "imageFile":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 458
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-direct {v2, v3, v4, v10}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Z)V

    .restart local v2    # "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    goto :goto_0

    .line 460
    .end local v2    # "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    :cond_4
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-direct {v2, v3, v10}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/files/FileHandle;Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2    # "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    goto :goto_0

    .line 466
    .end local v2    # "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .end local v4    # "imageFile":Lcom/badlogic/gdx/files/FileHandle;
    .end local v7    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    :catch_0
    move-exception v0

    .line 467
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v10, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error loading bitmap font: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
.end method

.method public bridge synthetic read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/utils/Json;
    .param p2, "x1"    # Lcom/badlogic/gdx/utils/JsonValue;
    .param p3, "x2"    # Ljava/lang/Class;

    .prologue
    .line 437
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$3;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v0

    return-object v0
.end method
