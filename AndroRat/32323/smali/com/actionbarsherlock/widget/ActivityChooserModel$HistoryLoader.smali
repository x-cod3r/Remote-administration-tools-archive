.class final Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;
.super Ljava/lang/Object;
.source "ActivityChooserModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HistoryLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/widget/ActivityChooserModel;


# direct methods
.method private constructor <init>(Lcom/actionbarsherlock/widget/ActivityChooserModel;)V
    .locals 0
    .parameter

    .prologue
    .line 930
    iput-object p1, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/actionbarsherlock/widget/ActivityChooserModel;Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 930
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;-><init>(Lcom/actionbarsherlock/widget/ActivityChooserModel;)V

    return-void
.end method

.method static synthetic access$1(Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;)Lcom/actionbarsherlock/widget/ActivityChooserModel;
    .locals 1
    .parameter

    .prologue
    .line 930
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserModel;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 933
    const/4 v4, 0x0

    .line 935
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserModel;

    move-object/from16 v21, v0

    #getter for: Lcom/actionbarsherlock/widget/ActivityChooserModel;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->access$0(Lcom/actionbarsherlock/widget/ActivityChooserModel;)Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserModel;

    move-object/from16 v22, v0

    #getter for: Lcom/actionbarsherlock/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->access$1(Lcom/actionbarsherlock/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 943
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    .line 944
    .local v12, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-interface {v12, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 946
    const/16 v17, 0x0

    .line 947
    .local v17, type:I
    :goto_0
    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    const/16 v21, 0x2

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 951
    :cond_0
    const-string v21, "historical-records"

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_3

    .line 952
    new-instance v21, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v22, "Share records file does not start with historical-records tag."

    invoke-direct/range {v21 .. v22}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1025
    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v17           #type:I
    :catch_0
    move-exception v20

    .line 1026
    .local v20, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    invoke-static {}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->access$8()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Error reading historical recrod file: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserModel;

    move-object/from16 v23, v0

    #getter for: Lcom/actionbarsherlock/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->access$1(Lcom/actionbarsherlock/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1030
    if-eqz v4, :cond_1

    .line 1032
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 1038
    .end local v20           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_1
    return-void

    .line 936
    :catch_1
    move-exception v5

    .line 940
    .local v5, fnfe:Ljava/io/FileNotFoundException;
    goto :goto_1

    .line 948
    .end local v5           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17       #type:I
    :cond_2
    :try_start_4
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v17

    goto :goto_0

    .line 956
    :cond_3
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 959
    .local v14, readRecords:Ljava/util/List;,"Ljava/util/List<Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;>;"
    :cond_4
    :goto_2
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v17

    .line 960
    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserModel;

    move-object/from16 v21, v0

    #getter for: Lcom/actionbarsherlock/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;
    invoke-static/range {v21 .. v21}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->access$2(Lcom/actionbarsherlock/widget/ActivityChooserModel;)Ljava/lang/Object;

    move-result-object v22

    monitor-enter v22
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 992
    :try_start_5
    new-instance v18, Ljava/util/LinkedHashSet;

    move-object/from16 v0, v18

    invoke-direct {v0, v14}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 998
    .local v18, uniqueShareRecords:Ljava/util/Set;,"Ljava/util/Set<Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserModel;

    move-object/from16 v21, v0

    #getter for: Lcom/actionbarsherlock/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;
    invoke-static/range {v21 .. v21}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->access$3(Lcom/actionbarsherlock/widget/ActivityChooserModel;)Ljava/util/List;

    move-result-object v7

    .line 999
    .local v7, historicalRecords:Ljava/util/List;,"Ljava/util/List<Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 1000
    .local v8, historicalRecordsCount:I
    add-int/lit8 v9, v8, -0x1

    .local v9, i:I
    :goto_3
    if-gez v9, :cond_8

    .line 1005
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v21

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->size()I

    move-result v23

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    .line 1006
    monitor-exit v22
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1030
    if-eqz v4, :cond_1

    .line 1032
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 1033
    :catch_2
    move-exception v21

    goto :goto_1

    .line 963
    .end local v7           #historicalRecords:Ljava/util/List;,"Ljava/util/List<Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;>;"
    .end local v8           #historicalRecordsCount:I
    .end local v9           #i:I
    .end local v18           #uniqueShareRecords:Ljava/util/Set;,"Ljava/util/Set<Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;>;"
    :cond_5
    const/16 v21, 0x3

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    const/16 v21, 0x4

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    .line 966
    :try_start_7
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 967
    .local v11, nodeName:Ljava/lang/String;
    const-string v21, "historical-record"

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_6

    .line 968
    new-instance v21, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v22, "Share records file not well-formed."

    invoke-direct/range {v21 .. v22}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 1027
    .end local v11           #nodeName:Ljava/lang/String;
    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v14           #readRecords:Ljava/util/List;,"Ljava/util/List<Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;>;"
    .end local v17           #type:I
    :catch_3
    move-exception v10

    .line 1028
    .local v10, ioe:Ljava/io/IOException;
    :try_start_8
    invoke-static {}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->access$8()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Error reading historical recrod file: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserModel;

    move-object/from16 v23, v0

    #getter for: Lcom/actionbarsherlock/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->access$1(Lcom/actionbarsherlock/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1030
    if-eqz v4, :cond_1

    .line 1032
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_1

    .line 1033
    :catch_4
    move-exception v21

    goto/16 :goto_1

    .line 971
    .end local v10           #ioe:Ljava/io/IOException;
    .restart local v11       #nodeName:Ljava/lang/String;
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v14       #readRecords:Ljava/util/List;,"Ljava/util/List<Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v17       #type:I
    :cond_6
    const/16 v21, 0x0

    :try_start_a
    const-string v22, "activity"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 973
    .local v3, activity:Ljava/lang/String;
    const/16 v21, 0x0

    const-string v22, "time"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    .line 975
    .local v15, time:J
    const/16 v21, 0x0

    const-string v22, "weight"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    .line 977
    .local v19, weight:F
    new-instance v13, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;

    move-wide v0, v15

    move/from16 v2, v19

    invoke-direct {v13, v3, v0, v1, v2}, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;-><init>(Ljava/lang/String;JF)V

    .line 979
    .local v13, readRecord:Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_2

    .line 1029
    .end local v3           #activity:Ljava/lang/String;
    .end local v11           #nodeName:Ljava/lang/String;
    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v13           #readRecord:Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;
    .end local v14           #readRecords:Ljava/util/List;,"Ljava/util/List<Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;>;"
    .end local v15           #time:J
    .end local v17           #type:I
    .end local v19           #weight:F
    :catchall_0
    move-exception v21

    .line 1030
    if-eqz v4, :cond_7

    .line 1032
    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 1037
    :cond_7
    :goto_4
    throw v21

    .line 1001
    .restart local v7       #historicalRecords:Ljava/util/List;,"Ljava/util/List<Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v8       #historicalRecordsCount:I
    .restart local v9       #i:I
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v14       #readRecords:Ljava/util/List;,"Ljava/util/List<Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v17       #type:I
    .restart local v18       #uniqueShareRecords:Ljava/util/Set;,"Ljava/util/Set<Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;>;"
    :cond_8
    :try_start_c
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;

    .line 1002
    .local v6, historicalRecord:Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;
    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1000
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_3

    .line 1010
    .end local v6           #historicalRecord:Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;
    :cond_9
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 1011
    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserModel;

    move-object/from16 v21, v0

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    #setter for: Lcom/actionbarsherlock/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z
    invoke-static {v0, v1}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->access$4(Lcom/actionbarsherlock/widget/ActivityChooserModel;Z)V

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserModel;

    move-object/from16 v21, v0

    #getter for: Lcom/actionbarsherlock/widget/ActivityChooserModel;->mHandler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->access$5(Lcom/actionbarsherlock/widget/ActivityChooserModel;)Landroid/os/Handler;

    move-result-object v21

    new-instance v23, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader$1;

    invoke-direct/range {v23 .. v24}, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader$1;-><init>(Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 990
    monitor-exit v22
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1030
    if-eqz v4, :cond_1

    .line 1032
    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    goto/16 :goto_1

    .line 1033
    :catch_5
    move-exception v21

    goto/16 :goto_1

    .line 990
    .end local v7           #historicalRecords:Ljava/util/List;,"Ljava/util/List<Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;>;"
    .end local v8           #historicalRecordsCount:I
    .end local v9           #i:I
    .end local v18           #uniqueShareRecords:Ljava/util/Set;,"Ljava/util/Set<Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;>;"
    :catchall_1
    move-exception v21

    :try_start_e
    monitor-exit v22
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    throw v21
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3

    .line 1033
    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v14           #readRecords:Ljava/util/List;,"Ljava/util/List<Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;>;"
    .end local v17           #type:I
    .restart local v20       #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_6
    move-exception v21

    goto/16 :goto_1

    .end local v20           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_7
    move-exception v22

    goto :goto_4
.end method
