.class Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$5;
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


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 0

    .prologue
    .line 485
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$5;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Json$ReadOnlySerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;
    .param p2, "jsonData"    # Lcom/badlogic/gdx/utils/JsonValue;
    .param p3, "type"    # Ljava/lang/Class;

    .prologue
    .line 487
    const-string v4, "name"

    const-class v5, Ljava/lang/String;

    invoke-virtual {p1, v4, v5, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 488
    .local v2, "name":Ljava/lang/String;
    const-string v4, "color"

    const-class v5, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v4, v5, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Color;

    .line 489
    .local v0, "color":Lcom/badlogic/gdx/graphics/Color;
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$5;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-virtual {v4, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->newDrawable(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v1

    .line 490
    .local v1, "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    instance-of v4, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;

    if-eqz v4, :cond_0

    move-object v3, v1

    .line 491
    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;

    .line 492
    .local v3, "named":Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p2, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->setName(Ljava/lang/String;)V

    .line 494
    .end local v3    # "named":Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;
    :cond_0
    return-object v1
.end method
