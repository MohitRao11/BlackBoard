<?xml version = "1.0" encoding = "UTF-8"?>
<!-- xsl stylesheet declaration with xsl namespace: 
Namespace tells the xlst processor about which 
element is to be processed and which is used for output purpose only 
-->
<xsl:stylesheet version = "1.0"
xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">
  <!-- xsl template declaration:  
template tells the xlst processor about the section of xml 
document which is to be formatted. It takes an XPath expression. 
In our case, it is matching document root element and will 
tell processor to process the entire document with this template. 
-->
  <xsl:template match = "/">
    <!-- HTML tags 
         Used for formatting purpose. Processor will skip them and browser 
            will simply render them. 
      -->

    <html>
      <style>
        table {
        border-collapse: collapse;
        width: 100%;
        }

        th, td {
        text-align: left;
        padding: 8px;
        }

        tr:nth-child(even){background-color: #f2f2f2}
      </style>
      <body>

        <div>


          <div style="color: #f2b611;">
            <h3 style="font:200 24px arial,verdana;">Announcements</h3>
          </div>

          <xsl:for-each select="Notifications/AnnouncementList/Announcement">
            <div style="margin-bottom:15px;font:200 14px arial,verdana;">
              <div>


                <b>
                  <div style="margin-bottom:5px">
                    <span style="color: #f2b611;">
                      Title -
                    </span>
                    <xsl:value-of  select = "Title"/>
                  </div>
                </b>

                <div>

                  <xsl:value-of select = "Body"/>

                </div>
                <div>


                </div>

                <div>
                  <span style="">
                    Date -
                  </span>
                  <xsl:value-of select = "Date"/>

                  <span style="">
                    Time -
                  </span>
                  <xsl:value-of select = "Time"/>

                  <span style="">
                    Posted By -
                  </span>
                  <xsl:value-of select = "PostedBy"/>

                </div>
                <div>


                </div>
              </div>
            </div>
          </xsl:for-each>

          <div style="color: #f2b611;">
            <h3 style="font:200 24px arial,verdana;">Events</h3>
          </div>
          <div style="font:200 14px arial,verdana;">


            <xsl:for-each select="Notifications/UpcomingEvents/Event">
              <b>
                <div >
                  <span style="color: #f2b611;">
                    Name -
                  </span>
                  <xsl:value-of  select = "EventName"/>
                </div>
              </b>
              <div>
                <span style="color: #f2b611;">
                  Date -
                </span>
                <xsl:value-of  select = "EventDate"/>
              </div>

              <div>
                <span style="color: #f2b611;">
                  Type -
                </span>
                <xsl:value-of  select = "EventType"/>
              </div>


              <div>
                <span style="color: #f2b611;">
                  Supervior Name -
                </span>
                <xsl:value-of  select = "EventSupervisor/Name"/>
              </div>

              <div>
                <span style="color: #f2b611;">
                  Supervior Title -
                </span>
                <xsl:value-of  select = "EventSupervisor/Title"/>
              </div>

              <div>
                <span style="color: #f2b611;">
                  Supervior EmailID -
                </span>
                <xsl:value-of  select = "EventSupervisor/EmailID"/>
              </div>
              <div style="padding-bottom:10px">
                <span style="color: #f2b611;">
                  Supervior PhoneNo. -
                </span>
                <xsl:value-of  select = "EventSupervisor/PhoneNo."/>
              </div>



            </xsl:for-each>



          </div>

          <div style="color: #f2b611;">
            <h3 style="font:200 24px arial,verdana;">Upcoming Deadlines</h3>
          </div>
          <div>

            <div style="font:200 14px arial,verdana;">
              <xsl:for-each select="Notifications/UpcomingDeadlines/UpcomingDeadline">
                <b>
                  <div >
                    <span style="color: #f2b611;">
                      Name -
                    </span>
                    <xsl:value-of  select = "Name"/>
                  </div>
                </b>

                <div >
                  <span style="color: #f2b611;">
                    Course -
                  </span>
                  <xsl:value-of  select = "Course"/>
                </div>

                <div style="padding-bottom:10px">
                  <span style="color: #f2b611;">
                    Deadline -
                  </span>
                  <xsl:value-of  select = "Deadline"/>
                </div>

              </xsl:for-each>

            </div>


          </div>

        </div>

        


        
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>